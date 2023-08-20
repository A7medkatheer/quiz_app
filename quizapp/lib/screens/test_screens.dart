import 'package:flutter/material.dart';

import '../widgets/category_class.dart';

class TestScreen extends StatelessWidget {
  factory TestScreen({Key? key}) {
    return TestScreen._(key: key);
  }

  const TestScreen._({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          for (int i = 0; i < 3; i++)
            CategoryContainer(
              index: i,
            ),
        ],
      ),
    );
  }
}







