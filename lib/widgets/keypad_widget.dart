import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:prj_2_calculator/widgets/button_widget.dart';

class KeypadWidget extends StatelessWidget {
  const KeypadWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
        child: Column(
      children: [
        const SizedBox(height: 10,),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            ButtonWidget(buttonColor: Colors.white,text: "7",),
            ButtonWidget(buttonColor: Colors.white,text: "8",),
            ButtonWidget(buttonColor: Colors.white,text: "9",),
            ButtonWidget(buttonColor: Colors.grey.shade300,text: "X",),
          ],
        ),
        const SizedBox(height: 15,),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            ButtonWidget(buttonColor: Colors.white,text: "4",),
            ButtonWidget(buttonColor: Colors.white,text: "5",),
            ButtonWidget(buttonColor: Colors.white,text: "6",),
            ButtonWidget(buttonColor: Colors.grey.shade300,text: "/",),
          ],
        ),
        const SizedBox(height: 15,),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            ButtonWidget(buttonColor: Colors.white,text: "1",),
            ButtonWidget(buttonColor: Colors.white,text: "2",),
            ButtonWidget(buttonColor: Colors.white,text: "3",),
            ButtonWidget(buttonColor: Colors.grey.shade300,text: "+",),
          ],
        ),
        const SizedBox(height: 15,),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            ButtonWidget(buttonColor: Colors.orange,text: "=",),
            ButtonWidget(buttonColor: Colors.white,text: "0",),
            ButtonWidget(buttonColor: Colors.grey.shade300,text: "C",),
            ButtonWidget(buttonColor: Colors.grey.shade300,text: "-",),
          ],
        ),
      ],
    ));
  }
}
