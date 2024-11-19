import 'package:doctor_app/components/my_blue_button.dart';
import 'package:flutter/material.dart';

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
                Container(
                  height: 45,
                  width: 45,
                  decoration: BoxDecoration(
                      color: Colors.grey.shade300, shape: BoxShape.circle),
                  child: const Icon(Icons.arrow_back),
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
            Container(
              width: 260,
              height: 70,
              child: const Text(
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
