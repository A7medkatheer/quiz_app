import 'package:flutter/material.dart';

import 'login_screen.dart';

class OpeningScreen extends StatelessWidget {
  const OpeningScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        // appBar: AppBar(
        //   backgroundColor: Colors.black,
        // ),
        body: Stack(
          children: [
            Image.asset(
              'images/download.jpg',
              fit: BoxFit.cover,
              width: double.infinity,
              height: double.infinity,
            ),
            Positioned(
              top: 60,
              bottom: 260,
              left: 80,
              child: Image.asset(
                'images/quiz.png',
                width: 200,
                height: 200,
              ),
            ),
            const Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(height: 80),
                  Text(
                    'ITI Quiz App ',
                    style: TextStyle(
                      fontFamily: "Pacifico",
                      fontSize: 30,
                      fontWeight: FontWeight.normal,
                      color: Colors.yellow,
                    ),
                  ),
                  SizedBox(height: 10),
                  Text(
                    'We Are Creative, enjoy our App ',
                    style: TextStyle(
                        fontFamily: "DancingScript",
                        fontSize: 30,
                        fontWeight: FontWeight.normal,
                        color: Colors.white),
                  ),
                ],
              ),
            ),
          ],
        ),
        floatingActionButton: Container(
          margin: EdgeInsets.only(right: 5, left: 37),
          width: double.infinity,
          child: ElevatedButton(
            onPressed: () {
              Navigator.pushReplacement(
                context,
                MaterialPageRoute<void>(
                  builder: (BuildContext context) => LoginScreen(),
                ),
              );
            },
            style: ButtonStyle(
              backgroundColor:
                  MaterialStateProperty.all<Color>(const Color(0xFF4CAF50)),
            ),
            child: const Text("Start"),
          ),
        ),
      ),
    );
  }
}
