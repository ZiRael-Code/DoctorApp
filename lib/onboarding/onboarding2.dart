import 'package:doctor_app/onboarding/onboarding3.dart';
import 'package:flutter/material.dart';

import '../components/my_blue_button.dart';

class Onboarding2 extends StatelessWidget {
  Onboarding2({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            SizedBox(
              height: 40,
            ),
            Align(
              alignment: Alignment.centerRight,
              child: Padding(
                padding: EdgeInsets.only(right: 25),
                child: Text(
                  "SKIP",
                  style: TextStyle(
                    color: Colors.blue,
                    fontSize: 14,
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 60,
            ),
            SizedBox(
              width: MediaQuery.of(context).size.width,
              child: Image.asset(
                "assets/images/onboarding2.png",
                fit: BoxFit.cover,
              ),
            ),
            SizedBox(
              height: 50,
            ),
            Center(
              child: Image.asset(
                "assets/images/onboardingframe2.png",
                scale: 4,
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 25),
              child: Align(
                alignment: Alignment.centerLeft,
                child: SizedBox(
                  width: 301,
                  height: 71,
                  child: Text(
                    "Easily schedule appointments with your patients, either through a video/voice call or a physical appointment, right from the app.",
                    style: TextStyle(
                      fontSize: 14,
                    ),
                  ),
                ),
              ),
            ),
            Spacer(),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 25),
              child: GestureDetector(
                  onTap: () => Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => Onboarding3(),
                        ),
                      ),
                  child: MyBlueButton(text: "Continue")),
            ),
            SizedBox(
              height: 50,
            )
          ],
        ),
      ),
    );
  }
}
