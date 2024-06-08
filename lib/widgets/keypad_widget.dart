import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:prj_2_calculator/widgets/button_widget.dart';

class KeypadWidget extends StatelessWidget {
  KeypadWidget({
    required this.updateOutput,
    required this.clearOutput,
    required this.calculateOutput,

  });

  final void Function(String) updateOutput;
  final void Function() clearOutput;
  final void Function() calculateOutput;

  @override
  Widget build(BuildContext context) {
    return Expanded(
        child: Column(
      children: [
        const SizedBox(
          height: 10,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            ButtonWidget(
              buttonColor: Colors.white,
              text: "7",
              updateOutput: updateOutput,
            ),
            ButtonWidget(
              buttonColor: Colors.white,
              text: "8",
              updateOutput: updateOutput,
            ),
            ButtonWidget(
              buttonColor: Colors.white,
              text: "9",
              updateOutput: updateOutput,
            ),
            ButtonWidget(
              buttonColor: Colors.grey.shade300,
              text: "X",
              updateOutput: updateOutput,
            ),
          ],
        ),
        const SizedBox(
          height: 15,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            ButtonWidget(
              buttonColor: Colors.white,
              text: "4",
              updateOutput: updateOutput,
            ),
            ButtonWidget(
              buttonColor: Colors.white,
              text: "5",
              updateOutput: updateOutput,
            ),
            ButtonWidget(
              buttonColor: Colors.white,
              text: "6",
              updateOutput: updateOutput,
            ),
            ButtonWidget(
              buttonColor: Colors.grey.shade300,
              text: "/",
              updateOutput: updateOutput,
            ),
          ],
        ),
        const SizedBox(
          height: 15,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            ButtonWidget(
              buttonColor: Colors.white,
              text: "1",
              updateOutput: updateOutput,
            ),
            ButtonWidget(
              buttonColor: Colors.white,
              text: "2",
              updateOutput: updateOutput,
            ),
            ButtonWidget(
              buttonColor: Colors.white,
              text: "3",
              updateOutput: updateOutput,
            ),
            ButtonWidget(
              buttonColor: Colors.grey.shade300,
              text: "+",
              updateOutput: updateOutput,
            ),
          ],
        ),
        const SizedBox(
          height: 15,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            ButtonWidget(
              buttonColor: Colors.orange,
              text: "=",
                calculateOutput: calculateOutput
            ),
            ButtonWidget(
              buttonColor: Colors.white,
              text: "0",
              updateOutput: updateOutput,
            ),
            ButtonWidget(
              buttonColor: Colors.grey.shade300,
              text: "C",
              clearOutput: clearOutput,
            ),
            ButtonWidget(
              buttonColor: Colors.grey.shade300,
              text: "-",
              updateOutput: updateOutput,
            ),
          ],
        ),
      ],
    ));
  }
}
