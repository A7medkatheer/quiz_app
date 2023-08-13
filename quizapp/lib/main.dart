
import 'package:flutter/material.dart';
import 'screens/login_screen.dart';
// import 'screens/opening_screen.dart';
void main() {
  runApp( QuizApp());
}

class QuizApp extends StatelessWidget {
   QuizApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      debugShowCheckedModeBanner: false,
      home: LoginScreen(),
    );
  }
}
