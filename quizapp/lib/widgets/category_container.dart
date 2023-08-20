import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:quizapp/Global/quiz_data.dart';
import 'package:quizapp/Screens/quiz_screen.dart';

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
    "IQ Test",
    "Science Quiz",
    " Literature Trivia",
    "Geography Challenge",
  ];
  List quizColor = [
    Colors.blue,
    Colors.red,
    Colors.yellow,
    Colors.green,
    Colors.purple,
    Colors.grey
  ];

  @override
  Widget build(BuildContext context) {
    return Expanded(
      // بتاخد اقصى مساحة ممكنة من المساحة المتاحة
      child: InkWell(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute<void>(
                builder: (BuildContext context) =>
                    QuizScreen(categoryMap: dataBase[index])),
          );
        },
        child: Container(
          decoration: BoxDecoration(
              color: quizColor[index],
              border: Border.all(width: 1, color: Colors.black)),
          child: Center(
            child: Text(
              quizName[index],
              style: GoogleFonts.actor(
                  fontSize: 35, color: Color.fromARGB(255, 0, 0, 0)),
            ),
          ),
        ),
      ),
    );
  }
}
