import 'package:doctor_app/components/my_blue_button.dart';
import 'package:doctor_app/onboarding/enable_fingerprint.dart';
import 'package:flutter/material.dart';

import '../components/my_textfield.dart';

class SetPassword extends StatefulWidget {
  const SetPassword({super.key});

  @override
  State<SetPassword> createState() => _SetPasswordState();
}

class _SetPasswordState extends State<SetPassword> {
  bool _obscureText = false;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 25),
        child: Column(
          children: [
            const SizedBox(
              height: 60,
            ),
            Image.asset(
              "assets/images/setpasswordframe.png",
              scale: 4,
            ),
            const SizedBox(
              height: 40,
            ),
            const Text(
              "Set Password",
              style: TextStyle(
                fontSize: 28,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            const Align(
              alignment: Alignment.centerLeft,
              child: Text(
                "Type in a new assword",
                style: TextStyle(
                  fontSize: 14,
                ),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            MyTextfield(
              hinttext: "******",
              obscuretext: _obscureText,
              suffixicon: IconButton(
                onPressed: () {
                  setState(() {
                    _obscureText = !_obscureText;
                  });
                },
                icon: Icon(
                    _obscureText ? Icons.visibility : Icons.visibility_off),
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            const Align(
              alignment: Alignment.centerLeft,
              child: Text(
                "Confirm password",
                style: TextStyle(
                  fontSize: 14,
                ),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            MyTextfield(
              hinttext: "******",
              obscuretext: _obscureText,
              suffixicon: IconButton(
                onPressed: () {
                  setState(() {
                    _obscureText = !_obscureText;
                  });
                },
                icon: Icon(
                    _obscureText ? Icons.visibility : Icons.visibility_off),
              ),
            ),
            const Spacer(),
            GestureDetector(
                onTap: () => Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(
                        builder: (context) => EnableFingerprint())),
                child: const MyBlueButton(text: "Continue")),
            const SizedBox(
              height: 40,
            )
          ],
        ),
      ),
    ));
  }
}
