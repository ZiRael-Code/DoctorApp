// import 'package:doctor_app/components/my_blue_button.dart';
// import 'package:doctor_app/components/my_white_button.dart';
// import 'package:doctor_app/onboarding/upload_id_card.dart';
// import 'package:flutter/material.dart';
//
// class VerifyIdentity extends StatelessWidget {
//   const VerifyIdentity({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Center(
//         child: SafeArea(
//           child: Padding(
//             padding: const EdgeInsets.all(25),
//             child: Column(
//               children: [
//                 const SizedBox(
//                   height: 80,
//                 ),
//                 const Text(
//                   "Verify Identity",
//                   style: TextStyle(
//                     fontSize: 28,
//                     fontWeight: FontWeight.bold,
//                   ),
//                 ),
//                 const SizedBox(
//                   height: 20,
//                 ),
//                 const Padding(
//                   padding: EdgeInsets.symmetric(horizontal: 75),
//                   child: Text(
//                     "Verify your identity as a medical specalist. You will be needed to upload or take a photo of your license.",
//                     style: TextStyle(
//                       fontSize: 14,
//                     ),
//                     textAlign: TextAlign.center,
//                   ),
//                 ),
//
//                 // image
//                 Stack(
//                   children: [
//                     Center(
//                       child: Container(
//                         margin: const EdgeInsets.only(top: 80.5),
//                         child: Image.asset(
//                           "assets/images/Group 803.png",
//                           width: 215,
//                           height: 215,
//                         ),
//                       ),
//                     ),
//                     Center(
//                       child: Container(
//                         margin: const EdgeInsets.only(top: 26),
//                         child: Image.asset(
//                           "assets/images/id-card.png",
//                           width: 222,
//                           height: 276,
//                         ),
//                       ),
//                     ),
//                   ],
//                 ),
//
//                 const SizedBox(
//                   height: 100,
//                 ),
//
//                 GestureDetector(
//                     onTap: () => Navigator.push(
//                           context,
//                           MaterialPageRoute(
//                             builder: (context) => const UploadIdCard(),
//                           ),
//                         ),
//                     child: const MyBlueButton(text: "Continue")),
//                 const SizedBox(
//                   height: 20,
//                 ),
//                 const MyWhiteButton(text: "I'll do this later")
//               ],
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }
