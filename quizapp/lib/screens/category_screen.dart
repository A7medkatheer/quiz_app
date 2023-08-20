import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:quizapp/screens/score_record.dart';

 // class TestPage extends StatelessWidget {
//   final Map categoryData;

//   const TestPage(this.categoryData, {super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         leading: const Center(
//             child: Text(
//           "2/10",
//           style: TextStyle(fontWeight: FontWeight.bold),
//         )),
//         title: Row(
//           mainAxisAlignment: MainAxisAlignment.spaceBetween,
//           children: [
//             Text(
//               categoryData["category"],
//               style: GoogleFonts.lobster(
//                 textStyle: const TextStyle(
//                   fontSize: 25,
//                   fontWeight: FontWeight.bold,
//                   color: Colors.white,
//                 ),
//               ),
//             ),
//           ],
//         ),
//         backgroundColor: categoryData["color"],
//         // actions: [],
//       ),
//       body: ListView.builder(
//         scrollDirection: Axis.horizontal, // Changed to vertical scrolling
//         itemCount: categoryData["data"].length,
//         itemBuilder: (context, index) {
//           var question = categoryData["data"][index];
//           var questionText = question.keys.first;
//           var answers = question["answers"];

//           return Padding(
//             padding: const EdgeInsets.all(20),
//             child: Container(
//               height: MediaQuery.of(context).size.height * 0.2,
//               decoration: BoxDecoration(
//                 borderRadius: BorderRadius.circular(50),
//                 color: const Color(0xFFF6F0F8),
//               ),
//               child: Column(
//                 mainAxisAlignment: MainAxisAlignment.center,
//                 children: [
//                   SizedBox(
//                     height: MediaQuery.of(context).size.height * 0.04,
//                   ),
//                   Padding(
//                     padding: const EdgeInsets.only(left: 20),
//                     child: Row(
//                       mainAxisAlignment: MainAxisAlignment.start,
//                       children: [
//                         Text(
//                           questionText,
//                           style: GoogleFonts.dancingScript(
//                             fontSize: 50,
//                             fontWeight: FontWeight.bold,
//                             decoration: TextDecoration.underline,
//                           ),
//                         ),
//                       ],
//                     ),
//                   ),
//                   Padding(
//                     padding: const EdgeInsets.only(left: 20),
//                     child: Row(
//                       mainAxisAlignment: MainAxisAlignment.start,
//                       children: [
//                         Text(
//                           question[questionText],
//                           style: GoogleFonts.cookie(
//                             fontSize: 25,
//                             fontWeight: FontWeight.bold,
//                           ),
//                         ),
//                       ],
//                     ),
//                   ),
//                   const SizedBox(
//                     height: 20,
//                   ),
//                   for (var answer in answers)
//                     ElevatedButton(
//                       onPressed: () {
//                         // Handle button click here
//                       },
//                       style: ElevatedButton.styleFrom(
//                         backgroundColor: categoryData["color"]
//                             .withOpacity(0.8), // Slightly modified button color
//                       ),
//                       child: Text(answer["ans"]),
//                     ),
//                 ],
//               ),
//             ),
//           );
//         },
//       ),
//     );
//   }
// }





class QuizScreen extends StatelessWidget {
  const QuizScreen(dataList, {super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          automaticallyImplyLeading: false,
          title: const Text("Sport test"),
          leading: const Center(
              child: Text(
            "2/10",
            style: TextStyle(fontWeight: FontWeight.bold),
          )),
          actions: const [
            Padding(
              padding: EdgeInsetsDirectional.only(end: 10),

              /// مهمةةةةةة
              child: Icon(Icons.access_alarm_rounded),
            )
          ],
        ),
        body: SizedBox(
          width: double.infinity,
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.all(20),
                  child: Text(
                    "Q.3 : How many players in the football team ",
                    style:
                        GoogleFonts.amaranth(color: Colors.red, fontSize: 25),
                  ),
                ),
                for (int i = 0; i < 4; i++)
                  ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute<void>(
                            builder: (BuildContext context) =>
                                 const scoreScreen(),
                          ),
                        );
                      },
                      child: Text("${9 + i}")),
                // ElevatedButton(onPressed: () {}, child: Text("10")),
                // ElevatedButton(onPressed: () {}, child: Text("11")),
                // ElevatedButton(onPressed: () {}, child: Text("12")),

                SizedBox(
                  height: 200,
                ),

                // BackButton(),

                // IconButton(
                //   onPressed: () {
                //     Navigator.pop(context);
                //   },
                //   icon: Icon(Icons.arrow_back),
                // )
              ],
            ),
          ),
        ));
  }
}
