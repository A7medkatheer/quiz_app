import 'package:flutter/material.dart';
import 'package:quizapp/widgets/category_container.dart';



class CategoryScreen extends StatelessWidget {
  const CategoryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          for (int i = 0; i < 3; i++)
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
