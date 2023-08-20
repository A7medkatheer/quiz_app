import 'package:flutter/material.dart';

import 'login_screen.dart';

class OpeningScreen extends StatelessWidget {
  const OpeningScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   backgroundColor: Colors.black,
      // ),
      body: Stack(
        children: [
          Image.asset(
            'images/download.jpg',
            fit: BoxFit.cover,
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
          ),
          Positioned(
            top: 20,
            left: 90,
            bottom: 230,
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
                SizedBox(height: 100),
                Text(
                  'ITI Quiz App ',
                  style: TextStyle(
                    fontFamily: "Pacifico",
                    fontSize: 30,
                    fontWeight: FontWeight.normal,
                    color: Colors.yellow,
                  ),
                ),
                SizedBox(height: 20),
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
        margin: const EdgeInsets.only(right: 5, left: 37),
        width: double.infinity,
        child: ElevatedButton(
          onPressed: () {
            Navigator.push(
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
    );
  }
}
