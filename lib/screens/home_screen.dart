import 'package:flutter/material.dart';

import '../widgets/keypad_widget.dart';
import '../widgets/result_widget.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          ResultWidget(),
          KeypadWidget(),
        ],
      ),
    );
  }
}
