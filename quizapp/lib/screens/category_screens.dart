import 'package:flutter/material.dart';
// import 'package:quizapp/Screens/quiz_screen.dart';

import '../Widgets/category_container.dart';

class CategoryScreens extends StatelessWidget {
  CategoryScreens({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          for (int i = 0; i < 6; i++)
            CategoryContainer(
              index: i,
            )

          //     Expanded(
          //   // بتاخد اقصى مساحة ممكنة من المساحة المتاحة
          //   child: Container(
          //     child: Center(
          //       child: Text(quizName[index!]),
          //     ),
          //     decoration: BoxDecoration(
          //         color: quizColor[index!],
          //         border: Border.all(width: 1, color: Colors.black)),
          //   ),
          // );
        ],
      ),
    );
  }
}
