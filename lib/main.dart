import 'package:another_flutter_splash_screen/another_flutter_splash_screen.dart';
import 'package:flutter/material.dart';

import './screens/home_screen.dart';

void main(){
  runApp(App());
}

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: FlutterSplashScreen.gif(
        gifPath: 'assets/calculator.gif',
        gifWidth: 269,
        gifHeight: 474,
        nextScreen: const HomeScreen(),
        duration: const Duration(seconds: 5),
        onInit: () async {
          debugPrint("onInit");
        },
        onEnd: () async {
          debugPrint("onEnd 1");
        },
      ),
      debugShowCheckedModeBanner: false,
    );
  }
}
