import 'package:flutter/material.dart';

class ResultWidget extends StatelessWidget {
  ResultWidget(this.output);

  final String output;

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.centerRight,
      padding: EdgeInsets.only(right: 10),
      height: 150,
      width: double.maxFinite,
      color: Colors.black,
      child: Text(output.isEmpty ? "0":output,style: TextStyle(fontSize: 40,color: Colors.white),),
    );
  }
}
