// import 'package:flutter/material.dart';
// import 'package:google_fonts/google_fonts.dart';

// import '../screens/score_record.dart';

// // ignore: must_be_immutable
// class Category extends StatelessWidget {
//   Category({
//     super.key,
//     this.onTap,
//   });

//   Function()? onTap;
//   @override
//   Widget build(BuildContext context) {
//     return GestureDetector(
//       onTap: () {
//         Navigator.push(context, MaterialPageRoute(builder: (context) {
//           return scorescreen(
//             totalnumofquestions: index + 1  ,
//             totalscore: totalscore,
//           );
//         }));
//       },
//       child: Container(
//         decoration: BoxDecoration(
//             borderRadius: BorderRadius.circular(50), color: Color(0xffF6F0F8)),
//         child: Row(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: [
//             Text(
//               "cairo",
//               style: GoogleFonts.lobster(
//                   fontSize: 50, fontWeight: FontWeight.bold),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
