import 'package:flutter/material.dart';

void main() {
  runApp(QuizApp());
}

class QuizApp extends StatelessWidget {
  const QuizApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.black,
        ),
        body: Stack(
          children: [
            Image.asset(
              'images/download.jpg',
              fit: BoxFit.cover,
              width: double.infinity,
              height: double.infinity,
            ),
            Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const SizedBox(height: 16),
                  Positioned(
                    top: 40,
                    child: Image.asset(
                      'images/quiz.png',
                      width: 200,
                      height: 200,
                    ),
                  ),
                  const Text(
                    'ITI Quiz App ',
                    style: TextStyle(
                      fontFamily: "Pacifico",
                      fontSize: 30,
                      fontWeight: FontWeight.normal,
                      color: Colors.yellow,
                    ),
                  ),
                  const Text(
                    'We Are Creative, enjoy our App ',
                    style: TextStyle(
                        fontFamily: "DancingScript",
                        fontSize: 23,
                        fontWeight: FontWeight.normal,
                        color: Colors.white),
                  ),
                ],
              ),
            ),
          ],
        ),
        floatingActionButton: Container(
          alignment: Alignment.center,
          height: 40,
          width: 370,
          decoration: const BoxDecoration(
            color: Color(0xff4BAC4F),
          ),
          child: const Text(
            'Start',
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          ),
        ),
      ),
    );
  }
}
