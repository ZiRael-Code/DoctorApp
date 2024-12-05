import 'package:doctor_app/components/my_blue_button.dart';
import 'package:doctor_app/onboarding/onboarding2.dart';
import 'package:flutter/material.dart';

class Onboarding1 extends StatelessWidget {
  Onboarding1({super.key});

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
              height: 20,
            ),
            SizedBox(
              width: MediaQuery.of(context).size.width,
              child: Image.asset(
                "assets/images/onboarding1.png",
                fit: BoxFit.cover,
              ),
            ),
            SizedBox(
              height: 40,
            ),
            Center(
              child: Image.asset(
                "assets/images/onboardingframe1.png",
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
                  width: 340,
                  height: 80,
                  child: Text(
                    "You can register a patient under you, and always get notified of the patient's vial readings so if things start going out of hand, you can always step in.",
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
                          builder: (context) => Onboarding2(),
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
