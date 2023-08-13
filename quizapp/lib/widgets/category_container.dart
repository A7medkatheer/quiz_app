import 'package:flutter/material.dart';
// import 'package:google_fonts/google_fonts.dart';
import '../main.dart';

// ignore: must_be_immutable
class CategoryContainer extends StatelessWidget {
  final int index;

  CategoryContainer({super.key, 
    // super.key,
    required this.index,
  });

  List quizName = ["Sport Test", "History Test", "General Test"];
  List quizColor = [Colors.blue, Colors.red, Colors.yellow];

  @override
  Widget build(BuildContext context) {
    return Expanded(
      // بتاخد اقصى مساحة ممكنة من المساحة المتاحة
      child: InkWell(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute<void>(
              builder: (BuildContext context) => QuizApp(),
            ),
          );
        },
        child: Container(
          decoration: BoxDecoration(
              color: quizColor[index],
              border: Border.all(width: 1, color: Colors.black)),
          child: Center(
            child: Text(
              quizName[index],
              style:(const TextStyle(fontFamily: "actor",fontSize: 35, color: Color.fromARGB(255, 0, 0, 0))),
                
            ),
          ),
        ),
      ),
    );
  }
}
