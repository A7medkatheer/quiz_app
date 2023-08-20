import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:quizapp/Global/quiz_data.dart';
// import 'package:quizapp/screens/login_screen.dart';
import 'package:quizapp/screens/opening_screen.dart';

// ignore: camel_case_types
class scorescreen extends StatelessWidget {
  const scorescreen(
      {super.key, required this.totalscore, required this.totalnumofquestions});
  final int totalscore;
  final int totalnumofquestions;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          Text("Hello ,",
              style: GoogleFonts.lobster(
                  textStyle: const TextStyle(
                      color: Colors.black,
                      fontSize: 50,
                      fontWeight: FontWeight.bold))),
          Text("${usernameController.text}",
              style: GoogleFonts.lobster(
                  textStyle: const TextStyle(
                      color: Color(0xff7E57C2),
                      fontSize: 50,
                      fontWeight: FontWeight.bold))),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("Your Score is : $totalscore /$totalnumofquestions",
                  style: GoogleFonts.lobster(
                      textStyle: const TextStyle(
                          color: Colors.black,
                          fontSize: 40,
                          fontWeight: FontWeight.bold))),
            ],
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height / 6,
          ),
          Padding(
            padding: const EdgeInsets.only(right: 15, left: 15),
            child: ElevatedButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const OpeningScreen()));
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Color(0xff7E57C2),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20)),
                ),
                child: Center(
                  child: Text("play again ",
                      style: GoogleFonts.damion(
                          textStyle: const TextStyle(
                              color: Colors.white,
                              fontSize: 50,
                              fontWeight: FontWeight.bold))),
                )),
          )
        ]),
      ),
    );
  }
}
