import 'package:doctor_app/onboarding/onboarding3.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../components/my_blue_button.dart';

class Onboarding2 extends StatelessWidget {
  const Onboarding2({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            const SizedBox(
              height: 40,
            ),
            const Align(
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
            const SizedBox(
              height: 60,
            ),
            SizedBox(
              width: MediaQuery.of(context).size.width,
              child: SvgPicture.asset(
                "assets/images/onboarding2.svg",
                fit: BoxFit.cover,
              ),
            ),
            const SizedBox(
              height: 50,
            ),
            Center(
              child: Image.asset(
                "assets/images/onboardingframe2.png",
                scale: 4,
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            const Padding(
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
            const Spacer(),
            Padding(
              padding: const EdgeInsets.only(bottom: 30, left: 25, right: 25),
              child: GestureDetector(
                  onTap: () => Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const Onboarding3(),
                        ),
                      ),
                  child: const MyBlueButton(text: "Continue")),
            ),
          ],
        ),
      ),
    );
  }
}
