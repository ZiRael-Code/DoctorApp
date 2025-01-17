import '../MainSelectionScreen/Dashboard.dart';
import 'package:doctor_app/onboarding/login_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../components/my_blue_button.dart';

class Onboarding3 extends StatelessWidget {
  Onboarding3({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body:  Padding(padding: EdgeInsets.only(top: getFontSize(25, context), bottom: getFontSize(20, context)),
          child: Column(
          children: [
            Align(
              alignment: Alignment.centerRight,
              child: Padding(
                padding: EdgeInsets.only(right: getFontSize(25, context)),
                child: Text(
                  "SKIP",
                  style: TextStyle(
                    color: Colors.blue,
                    fontSize: getFontSize(14, context),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: getFontSize(120, context),
            ),
            SizedBox(
              width: MediaQuery.of(context).size.width,
              child: SvgPicture.asset(
                "assets/images/onbording3.svg",
                fit: BoxFit.cover,
              ),
            ),
            SizedBox(
              height: getFontSize(50, context),
            ),
            Center(
              child: Image.asset(
                "assets/images/onboardingframe3.png",
                scale: 4,
              ),
            ),
            SizedBox(
              height: getFontSize(20, context),
            ),
            Padding(
              padding:
                  EdgeInsets.symmetric(horizontal: getFontSize(25, context)),
              child: Align(
                alignment: Alignment.centerLeft,
                child: SizedBox(
                  width: getFontSize(301, context),
                  height: getFontSize(71, context),
                  child: Text(
                    "Prescribe medications for your patients rignt from the app and monitor their usage.",
                    style: TextStyle(
                      fontSize: getFontSize(14, context),
                    ),
                  ),
                ),
              ),
            ),
            Spacer(),
            Padding(
              padding:
                  EdgeInsets.symmetric(horizontal: getFontSize(25, context)),
              child: GestureDetector(
                onTap: () => Navigator.push(context,
                    MaterialPageRoute(builder: (context) => LoginPage())),
                child: MyBlueButton(text: "Continue"),
              ),
            ),
          ],
        ),
        ),
      ),
    );
  }
}
