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
          padding: EdgeInsets.symmetric(horizontal: 25),
          child: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(
                  height: 60,
                ),
                Center(
                  child: Image.asset(
                    "assets/images/illustration.png",
                    scale: 4,
                  ),
                ),
                SizedBox(
                  height: 25,
                ),
                Column(
                  children: [
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        "Welcome",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 28,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        "Username",
                        style: TextStyle(
                          fontSize: 14,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    MyTextfield(
                      hinttext: "Username",
                      obscuretext: false,
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        "Password",
                        style: TextStyle(
                          fontSize: 14,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 10,
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
                      height: 15,
                    ),
                    Align(
                      alignment: Alignment.centerRight,
                      child: Text(
                        "Forgot passowrd",
                        style: TextStyle(
                            color: Colors.blue,
                            fontSize: 14,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    GestureDetector(
                        onTap: () => Navigator.pushReplacement(
                            context,
                            MaterialPageRoute(
                                builder: (context) => MainNavigator())),
                        child: MyBlueButton(text: "Login")),
                    SizedBox(
                      height: 20,
                    ),
                    Center(
                      child: Text("Or login with"),
                    ),
                    SizedBox(
                      height: 20,
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
                        SizedBox(width: 10),
                        Image.asset(
                          "assets/images/google.png",
                          scale: 4,
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("Don't have an account yet?"),
                    SizedBox(
                      width: 4,
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
