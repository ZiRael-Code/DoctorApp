import 'package:doctor_app/onboarding/login_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../components/my_blue_button.dart';

class Onboarding3 extends StatelessWidget {
  const Onboarding3({super.key});

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
              height: 150,
            ),
            SizedBox(
              width: MediaQuery.of(context).size.width,
              child: SvgPicture.asset(
                "assets/images/onbording3.svg",
                fit: BoxFit.cover,
              ),
            ),
            const SizedBox(
              height: 50,
            ),
            Center(
              child: Image.asset(
                "assets/images/onboardingframe3.png",
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
                    "Prescribe medications for your patients rignt from the app and monitor their usage.",
                    style: TextStyle(
                      fontSize: 14,
                    ),
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 40,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25),
              child: GestureDetector(
                onTap: () => Navigator.push(context,
                    MaterialPageRoute(builder: (context) => const LoginPage())),
                child: const MyBlueButton(text: "Continue"),
              ),
            ),
            const SizedBox(
              height: 50,
            )
          ],
        ),
      ),
    );
  }
}
