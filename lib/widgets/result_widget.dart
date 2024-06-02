import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class ResultWidget extends StatelessWidget {
  const ResultWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.centerRight,
      padding: EdgeInsets.only(right: 10),
      height: 150,
      width: double.maxFinite,
      color: Colors.black,
      child: Text("0",style: TextStyle(fontSize: 40,color: Colors.white),),
    );
  }
}
