import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
// import 'package:quizapp/Global/quiz_data.dart';
import 'package:quizapp/screens/score_record.dart';
// import 'package:quizapp/screens/score_record.dart';
// import 'package:quizapp/widgets/category_class.dart';

// ignore: must_be_immutable
class QuizScreen extends StatefulWidget {
  final Map categoryMap;
  const QuizScreen({super.key, required this.categoryMap});

  @override
  State<QuizScreen> createState() => _QuizScreenState();
}

class _QuizScreenState extends State<QuizScreen> {
  int index = 0;
  int totalscore = 0;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          automaticallyImplyLeading: false,
          title: Text(
            widget.categoryMap["category"],
            style: GoogleFonts.lobster(
              textStyle: const TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
          ),
          leading: Center(
              child: Text(
            "${index + 1} / ${(widget.categoryMap["data"] as List).length}",
            style: const TextStyle(fontWeight: FontWeight.bold),
          )),
          actions: const [
            Padding(
              padding: EdgeInsetsDirectional.only(end: 10),
              child: Icon(Icons.access_alarm_rounded),
            )
          ],
          backgroundColor: widget.categoryMap["color"],
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
                    widget.categoryMap["data"][index]["question"],
                    style:
                        GoogleFonts.amaranth(color: Colors.red, fontSize: 25),
                  ),
                ),
                for (int i = 0;
                    i <
                        (widget.categoryMap["data"][index]["answers"] as List)
                            .length;
                    i++)
                  ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          backgroundColor: widget.categoryMap["color"]),
                      onPressed: () {
                        totalscore += widget.categoryMap["data"][index]
                            ["answers"][i]["score"] as int;
                        if (index + 1 <
                            (widget.categoryMap["data"] as List).length) {
                          setState(() {
                            index++;
                          });
                        } else {
                          Navigator.pushReplacement(
                            context,
                            MaterialPageRoute<void>(
                              builder: (BuildContext context) => scorescreen(
                                totalscore: totalscore,
                                totalnumofquestions:
                                    (widget.categoryMap["data"] as List).length,
                              ),
                            ),
                          );
                        }
                      },
                      child: Text(widget.categoryMap["data"][index]["answers"]
                          [i]["ans"])),
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
        ),
      ),
    );
  }
}
