import '../MainSelectionScreen/Dashboard.dart';
import 'package:doctor_app/components/my_blue_button.dart';
import 'package:doctor_app/onboarding/set_password.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../components/my_textfield.dart';

class RegisterPage extends StatefulWidget {
  RegisterPage({super.key});

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: getFontSize(25, context)),
            child: Column(
              children: [
                SizedBox(
                  height: getFontSize(40, context),
                ),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    "Register",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: getFontSize(28, context),
                    ),
                  ),
                ),
                SizedBox(
                  height: getFontSize(30, context),
                ),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    "First Name",
                    style: TextStyle(
                      fontSize: getFontSize(14, context),
                    ),
                  ),
                ),
                SizedBox(
                  height: getFontSize(10, context),
                ),
                MyTextfield(
                  hinttext: "First Name",
                  obscuretext: false,
                ),
                SizedBox(
                  height: getFontSize(20, context),
                ),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    "Last Name",
                    style: TextStyle(
                      fontSize: getFontSize(14, context),
                    ),
                  ),
                ),
                SizedBox(
                  height: getFontSize(10, context),
                ),
                MyTextfield(
                  hinttext: "Last Name",
                  obscuretext: false,
                ),
                SizedBox(
                  height: getFontSize(20, context),
                ),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    "Phone Number",
                    style: TextStyle(
                      fontSize: getFontSize(14, context),
                    ),
                  ),
                ),
                SizedBox(
                  height: getFontSize(10, context),
                ),
                MyTextfield(
                  hinttext: "Phone Number",
                  obscuretext: false,
                ),
                SizedBox(
                  height: getFontSize(20, context),
                ),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    "Email",
                    style: TextStyle(
                      fontSize: getFontSize(14, context),
                    ),
                  ),
                ),
                SizedBox(
                  height: getFontSize(10, context),
                ),
                MyTextfield(
                  hinttext: "Email Address",
                  obscuretext: false,
                ),
                SizedBox(
                  height: getFontSize(20, context),
                ),
                GestureDetector(
                  onTap: () {
                    // Navigate to login page
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => SetPassword()));
                  },
                  child: MyBlueButton(
                    text: "Register",
                  ),
                ),
                SizedBox(
                  height: getFontSize(30, context),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SvgPicture.asset("assets/images/divider.svg"),
                    SizedBox(
                      width: getFontSize(120, context),
                      child: Divider(
                        color: Colors.grey.shade300,
                        thickness: 1,
                      ),
                    ),
                    SizedBox(
                      width: getFontSize(8, context),
                    ),
                    Text(
                      "Or register with",
                    ),
                    SizedBox(
                      width: getFontSize(8, context),
                    ),
                    SizedBox(
                      width: getFontSize(120, context),
                      child: Divider(
                        color: Colors.grey.shade300,
                        thickness: 1,
                      ),
                    )
                  ],
                ),
                SizedBox(
                  height: getFontSize(20, context),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset(
                      "assets/images/facebook.png",
                      scale: 4,
                    ),
                    SizedBox(width: getFontSize(10, context)),
                    Image.asset(
                      "assets/images/google.png",
                      scale: 4,
                    ),
                  ],
                ),
                SizedBox(
                  height: getFontSize(30, context),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("Already have an account?"),
                    SizedBox(
                      width: getFontSize(4, context),
                    ),
                    GestureDetector(
                      onTap: () => Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => RegisterPage())),
                      child: Text(
                        "Login here",
                        style: TextStyle(
                            color: Colors.blue, fontWeight: FontWeight.w500),
                      ),
                    )
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
