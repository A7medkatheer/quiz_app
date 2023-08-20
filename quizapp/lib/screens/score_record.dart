import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

// ignore: camel_case_types
class scoreScreen extends StatelessWidget {
  const scoreScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("Hello ,",
                  style: GoogleFonts.lobster(
                      textStyle: const TextStyle(
                          color: Colors.black,
                          fontSize: 50,
                          fontWeight: FontWeight.bold))),
              Text("ahmed ",
                  style: GoogleFonts.lobster(
                      textStyle: const TextStyle(
                          color: Color(0xff7E57C2),
                          fontSize: 50,
                          fontWeight: FontWeight.bold))),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("Your Score is : 8/10",
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
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color(0xff7E57C2),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20)),
                ),
                child: Center(
                  child: Text("Reset ",
                      style: GoogleFonts.damion(
                          textStyle: const TextStyle(
                              color: Colors.white,
                              fontSize: 50,
                              fontWeight: FontWeight.bold))),
                )),
          )
        ]),
    );
  }
}
