import 'package:doctor_app/components/my_blue_button.dart';
import 'package:doctor_app/onboarding/login_page.dart';
import 'package:flutter/material.dart';

class SuccessPage extends StatelessWidget {
  SuccessPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: EdgeInsets.symmetric(horizontal: 25),
          child: Center(
              child: Column(
            children: [
              SizedBox(
                height: 120,
              ),
              Text(
                "Success!",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 28,
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Column(
                children: [
                  Text(
                    "Your account has been created",
                    style: TextStyle(color: Colors.grey, fontSize: 14),
                  ),
                  Text(
                    "successfully",
                    style: TextStyle(color: Colors.grey, fontSize: 14),
                  )
                ],
              ),
              SizedBox(
                height: 100,
              ),
              Image.asset(
                "assets/images/unboardinglogo.png",
                scale: 4,
              ),
              Spacer(),
              GestureDetector(
                  onTap: () => Navigator.push(context,
                      MaterialPageRoute(builder: (context) => LoginPage())),
                  child: MyBlueButton(text: "Continue to Login")),
              SizedBox(
                height: 40,
              )
            ],
          )),
        ),
      ),
    );
  }
}
