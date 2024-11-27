import 'package:doctor_app/components/my_blue_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class PinSettings10 extends StatelessWidget {
  const PinSettings10({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 25),
        child: Column(
          children: [
            const SizedBox(
              height: 40,
            ),
            Row(
              children: [
                GestureDetector(
                  onTap: () => Navigator.pop(context),
                  child: Container(
                    width: 35,
                    height: 35,
                    padding: const EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(50),
                      color: const Color(0xFFE5E5E5),
                    ),
                    child: SvgPicture.asset(
                      'assets/images/back.svg',
                      width: 8.0,
                      height: 15,
                    ),
                  ),
                ),
                const SizedBox(
                  width: 80,
                ),
                const Center(
                  child: Text(
                    "Success!",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 100,
            ),
            const SizedBox(
              width: 260,
              height: 70,
              child: Text(
                textAlign: TextAlign.center,
                "You have successfully sent invitation links, when they sign up you get a commission.",
                style: TextStyle(fontSize: 16),
              ),
            ),
            const Spacer(),
            const MyBlueButton(text: "Done"),
            const SizedBox(
              height: 40,
            )
          ],
        ),
      ),
    ));
  }
}
