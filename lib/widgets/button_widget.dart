import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class ButtonWidget extends StatelessWidget {
  ButtonWidget({
    required this.text,
   required this.buttonColor,
    this.updateOutput,
    this.clearOutput,
    this.calculateOutput
  });

  final Color buttonColor;
  final String text;
  final buttonDiameter = 90.0;
  final void Function(String)? updateOutput;
  final void Function()? clearOutput;
  final void Function()? calculateOutput;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: buttonDiameter,
      width: buttonDiameter,
      child: ElevatedButton(
        onPressed: () {
          updateOutput?.call(text);
          clearOutput?.call();
          calculateOutput?.call();
        },
        child: Text(
          text,
          style: TextStyle(fontSize: 24),
        ),
        style: ElevatedButton.styleFrom(
          backgroundColor: buttonColor,
          elevation: 5,
        ),
      ),
    );
  }
}
