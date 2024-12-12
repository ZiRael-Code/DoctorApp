import '../MainSelectionScreen/Dashboard.dart';
import 'package:doctor_app/MainSelectionScreen/MainNavigator.dart';
import 'package:doctor_app/components/my_blue_button.dart';
import 'package:doctor_app/components/my_textfield.dart';
import 'package:doctor_app/onboarding/register_page.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  bool _obscureText = true;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: EdgeInsets.symmetric(horizontal: getFontSize(25, context)),
          child: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(
                  height: getFontSize(60, context),
                ),
                Center(
                  child: Image.asset(
                    "assets/images/illustration.png",
                    scale: 4,
                  ),
                ),
                SizedBox(
                  height: getFontSize(25, context),
                ),
                Column(
                  children: [
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        "Welcome",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: getFontSize(28, context),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: getFontSize(20, context),
                    ),
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        "Username",
                        style: TextStyle(
                          fontSize: getFontSize(14, context),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: getFontSize(20, context),
                    ),
                    MyTextfield(
                      hinttext: "Username",
                      obscuretext: false,
                    ),
                    SizedBox(
                      height: getFontSize(10, context),
                    ),
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        "Password",
                        style: TextStyle(
                          fontSize: getFontSize(14, context),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: getFontSize(10, context),
                    ),
                    MyTextfield(
                      hinttext: "Password",
                      obscuretext: _obscureText,
                      suffixicon: IconButton(
                        onPressed: () {
                          setState(() {
                            _obscureText = !_obscureText;
                          });
                        },
                        icon: Icon(_obscureText
                            ? Icons.visibility
                            : Icons.visibility_off),
                      ),
                    ),
                    SizedBox(
                      height: getFontSize(15, context),
                    ),
                    Align(
                      alignment: Alignment.centerRight,
                      child: Text(
                        "Forgot passowrd",
                        style: TextStyle(
                            color: Colors.blue,
                            fontSize: getFontSize(14, context),
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                    SizedBox(
                      height: getFontSize(30, context),
                    ),
                    GestureDetector(
                        onTap: () => Navigator.pushReplacement(
                            context,
                            MaterialPageRoute(
                                builder: (context) => MainNavigator())),
                        child: MyBlueButton(text: "Login")),
                    SizedBox(
                      height: getFontSize(20, context),
                    ),
                    Center(
                      child: Text("Or login with"),
                    ),
                    SizedBox(
                      height: getFontSize(20, context),
                    ),
                  ],
                ),
                Center(
                  child: Container(
                    child: Row(
                      mainAxisAlignment:
                          MainAxisAlignment.center, // Center within the row
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
                  ),
                ),
                SizedBox(
                  height: getFontSize(30, context),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("Don't have an account yet?"),
                    SizedBox(
                      width: getFontSize(4, context),
                    ),
                    GestureDetector(
                      onTap: () => Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => RegisterPage())),
                      child: Text(
                        "Register here",
                        style: TextStyle(color: Colors.blue),
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