import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:quizapp/screens/category_screen.dart';

import '../data/data_quiz.dart';
// import 'package:quizapp/screens/category_screen.dart';
// import 'package:quizapp/screens/opening_screen.dart';

// ignore: must_be_immutable
class CategoryContainer extends StatelessWidget {
  final int index;

  CategoryContainer({
    super.key,
    // super.key,
    required this.index,
  });

  List quizName = [
    "Sport Test",
    "History Test",
    "General Test",
    // "Science Quiz",
    // "Literature Trivia",
    // "Geography Challenge",
  ];
  List quizColor = [
    Colors.blue,
    Colors.red,
    Colors.yellow,
    // Colors.green,
    // Colors.purple,
    // Colors.grey,
  ];

  @override
  Widget build(BuildContext context) {
    return Expanded(
      // بتاخد اقصى مساحة ممكنة من المساحة المتاحة
      child: InkWell(
        onTap: () {
          // Navigator.push(
          //   context,
          //   MaterialPageRoute<void>(
          //     builder: (BuildContext context) => QuizScreen(dataList[index]),
          //   ),
          // );
          switch (index) {
            case 0:
              Navigator.push(
                context,
                MaterialPageRoute<void>(
                  builder: (BuildContext context) => QuizScreen(dataList[0]),
                ),
              );
              break;
            case 1:
              Navigator.push(
                context,
                MaterialPageRoute<void>(
                  builder: (BuildContext context) => QuizScreen(dataList[1]),
                ),
              );
              break;
            case 2:
              Navigator.push(
                context,
                MaterialPageRoute<void>(
                  builder: (BuildContext context) => QuizScreen(dataList[2]),
                ),
              );
              break;
            default:
              // Handle other cases if needed
              break;
          }
        },
        child: Container(
          decoration: BoxDecoration(
              color: quizColor[index],
              border: Border.all(width: 1, color: Colors.black)),
          child: Center(
            child: Text(
              quizName[index],
              style: GoogleFonts.actor(
                  fontSize: 35, color: const Color.fromARGB(255, 0, 0, 0)),
            ),
          ),
        ),
      ),
    );
  }
}
