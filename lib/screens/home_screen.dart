import 'package:flutter/material.dart';
import 'package:math_expressions/math_expressions.dart';

import '../widgets/keypad_widget.dart';
import '../widgets/result_widget.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  String output = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          ResultWidget(output),
          KeypadWidget(
            updateOutput: updateOutput,
            clearOutput: clearOutput,
              calculateOutput: calculateOutput,
          ),
        ],
      ),
    );
  }

  void updateOutput(String keyValue){
    setState(() {
      if((output.isNotEmpty && isOperator(keyValue) && isLastOperator())){
        //33+
        //33
        //12X
        var subString = output.substring(0,output.length - 1);
        output = subString + keyValue;
      }
      else if(output.isEmpty && isOperator(keyValue)){
        ScaffoldMessenger.of(context).showSnackBar(const SnackBar(content: Text("Please add a number first")));
      }
      else{
        output += keyValue;
      }
    });
  }

  void clearOutput(){
    setState(() {
      output = '';
    });
  }

  void calculateOutput(){
    setState(() {
      if(isLastOperator()){
        ScaffoldMessenger.of(context).showSnackBar(const SnackBar(content: Text("Please end with a number!")));
      }
      else{
        Parser p = Parser();
        ContextModel context = ContextModel();
        output = output.replaceAll("X", "*");
        Expression exp = p.parse(output);
        double result = exp.evaluate(EvaluationType.REAL, context);
        output = result.toString();
      }
    });
  }

  bool isLastOperator(){
    String lastCharacter = output[output.length - 1];
    return isOperator(lastCharacter);
  }

  bool isOperator(String char){
    List<String> listOfOperators = ["+","-","/","X"];
    bool condition = listOfOperators.contains(char);
    return condition;
  }
}
