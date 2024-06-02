import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class ButtonWidget extends StatelessWidget {
  ButtonWidget({
    required this.text,
   required this.buttonColor,
  });

  final Color buttonColor;
  final String text;
  final buttonDiameter = 90.0;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: buttonDiameter,
      width: buttonDiameter,
      child: ElevatedButton(
        onPressed: () {},
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
