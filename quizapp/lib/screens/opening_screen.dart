import 'package:flutter/material.dart';

import 'login_screen.dart';

class OpeningScreen extends StatelessWidget {
  const OpeningScreen({Key? key}) : super(key: key);

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
          margin: EdgeInsets.symmetric(horizontal: 12, vertical: 20),
          width: double.infinity,
          child: ElevatedButton(
            onPressed: () {
              // الكود الذي تريد تنفيذه عند الضغط على الزرار هنا
              Navigator.push(
                context,
                MaterialPageRoute<void>(
                  builder: (BuildContext context) => const LoginScreen(),
                ),
              );
            },
            style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all<Color>(
                  Color(0xFF4CAF50)), // تعيين لون الخلفية للزرار
            ),
            child: const Text("Start"),
          ),
        ),
      ),
    );
  }
}
