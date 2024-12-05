import 'package:doctor_app/onboarding/login_page.dart';
import 'package:flutter/material.dart';

import '../components/my_blue_button.dart';

class Onboarding3 extends StatelessWidget {
  Onboarding3({super.key});

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
              height: 120,
            ),
            SizedBox(
              width: MediaQuery.of(context).size.width,
              child: Image.asset(
                "assets/images/onboarding3.png",
                fit: BoxFit.cover,
              ),
            ),
            SizedBox(
              height: 50,
            ),
            Center(
              child: Image.asset(
                "assets/images/onboardingframe3.png",
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
                    "Prescribe medications for your patients rignt from the app and monitor their usage.",
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
                onTap: () => Navigator.push(context,
                    MaterialPageRoute(builder: (context) => LoginPage())),
                child: MyBlueButton(text: "Continue"),
              ),
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
