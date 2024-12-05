import 'package:doctor_app/components/my_blue_button.dart';
import 'package:flutter/material.dart';

import '../components/my_textfield.dart';

class SetPassword extends StatefulWidget {
  SetPassword({super.key});

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
        padding: EdgeInsets.symmetric(horizontal: 25),
        child: Column(
          children: [
            SizedBox(
              height: 60,
            ),
            Image.asset(
              "assets/images/setpasswordframe.png",
              scale: 4,
            ),
            SizedBox(
              height: 40,
            ),
            Text(
              "Set Password",
              style: TextStyle(
                fontSize: 28,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Align(
              alignment: Alignment.centerLeft,
              child: Text(
                "Type in a new assword",
                style: TextStyle(
                  fontSize: 14,
                ),
              ),
            ),
            SizedBox(
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
            SizedBox(
              height: 30,
            ),
            Align(
              alignment: Alignment.centerLeft,
              child: Text(
                "Confirm password",
                style: TextStyle(
                  fontSize: 14,
                ),
              ),
            ),
            SizedBox(
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
            Spacer(),
            MyBlueButton(text: "Continue"),
            SizedBox(
              height: 40,
            )
          ],
        ),
      ),
    ));
  }
}
