import 'package:doctor_app/MainSelectionScreen/MainNavigator.dart';
import 'package:doctor_app/components/my_blue_button.dart';
import 'package:doctor_app/components/my_textfield.dart';
import 'package:doctor_app/onboarding/register_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

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
          padding: const EdgeInsets.symmetric(horizontal: 25),
          child: SingleChildScrollView(
            child: Column(
              children: [
                const SizedBox(
                  height: 60,
                ),
                Center(
                  child: Image.asset(
                    "assets/images/illustration.png",
                    scale: 4,
                  ),
                ),
                const SizedBox(
                  height: 25,
                ),
                Column(
                  children: [
                    const Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        "Welcome",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 28,
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    const Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        "Username",
                        style: TextStyle(
                            fontSize: 14, fontWeight: FontWeight.w500),
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    const MyTextfield(
                      hinttext: "Username",
                      obscuretext: false,
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    const Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        "Password",
                        style: TextStyle(
                            fontSize: 14, fontWeight: FontWeight.w500),
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    MyTextfield(
                      hinttext: "*********",
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
                    const SizedBox(
                      height: 15,
                    ),
                    const Align(
                      alignment: Alignment.centerRight,
                      child: Text(
                        "Forgot passowrd",
                        style: TextStyle(
                            color: Colors.blue,
                            fontSize: 14,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    GestureDetector(
                        onTap: () => Navigator.pushReplacement(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const MainNavigator())),
                        child: const MyBlueButton(text: "Login")),
                    const SizedBox(
                      height: 20,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SvgPicture.asset("assets/images/divider.svg"),
                        SizedBox(
                          width: 6,
                        ),
                        Text("Or login with"),
                        SvgPicture.asset("assets/images/divider.svg"),
                        SizedBox(
                          width: 6,
                        ),
                      ],
                    ),
                    const SizedBox(
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
                        const SizedBox(width: 10),
                        Image.asset(
                          "assets/images/google.png",
                          scale: 4,
                        ),
                      ],
                    ),
                  ),
                ),
                const SizedBox(
                  height: 30,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text("Don't have an account yet?"),
                    const SizedBox(
                      width: 4,
                    ),
                    GestureDetector(
                      onTap: () => Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const RegisterPage())),
                      child: const Text(
                        "Register here",
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
