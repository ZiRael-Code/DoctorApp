import 'package:doctor_app/components/my_blue_button.dart';
import 'package:doctor_app/onboarding/login_page.dart';
import 'package:flutter/material.dart';

class SuccessPage extends StatelessWidget {
  const SuccessPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 25),
          child: Center(
              child: Column(
            children: [
              const SizedBox(
                height: 120,
              ),
              const Text(
                "Success!",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 28,
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              const Column(
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
              const SizedBox(
                height: 100,
              ),
              Image.asset(
                "assets/images/unboardinglogo.png",
                scale: 4,
              ),
              const Spacer(),
              GestureDetector(
                  onTap: () => Navigator.push(context,
                      MaterialPageRoute(builder: (context) => LoginPage())),
                  child: const MyBlueButton(text: "Continue to Login")),
              const SizedBox(
                height: 40,
              )
            ],
          )),
        ),
      ),
    );
  }
}
