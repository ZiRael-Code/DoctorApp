import 'package:doctor_app/components/my_blue_button.dart';
import 'package:flutter/material.dart';

import '../components/my_textfield.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({super.key});

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
            padding: EdgeInsets.symmetric(horizontal: 25),
            child: Column(
              children: [
                SizedBox(
                  height: 30,
                ),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    "Register",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 28,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 30,
                ),
                const Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    "First Name",
                    style: TextStyle(
                      fontSize: 14,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                const MyTextfield(
                  hinttext: "First Name",
                  obscuretext: false,
                ),
                const SizedBox(
                  height: 20,
                ),
                const Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    "Last Name",
                    style: TextStyle(
                      fontSize: 14,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                const MyTextfield(
                  hinttext: "Last Name",
                  obscuretext: false,
                ),
                const SizedBox(
                  height: 20,
                ),
                const Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    "Phone Number",
                    style: TextStyle(
                      fontSize: 14,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                const MyTextfield(
                  hinttext: "Phone Number",
                  obscuretext: false,
                ),
                const SizedBox(
                  height: 20,
                ),
                const Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    "Email",
                    style: TextStyle(
                      fontSize: 14,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                const MyTextfield(
                  hinttext: "Email Address",
                  obscuretext: false,
                ),
                const SizedBox(
                  height: 20,
                ),
                MyBlueButton(
                  text: "Register",
                ),
                const SizedBox(
                  height: 30,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(
                      width: 120,
                      child: Divider(
                        color: Colors.grey.shade300,
                        thickness: 1,
                      ),
                    ),
                    SizedBox(
                      width: 8,
                    ),
                    Text(
                      "Or register with",
                    ),
                    SizedBox(
                      width: 8,
                    ),
                    SizedBox(
                      width: 120,
                      child: Divider(
                        color: Colors.grey.shade300,
                        thickness: 1,
                      ),
                    )
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
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
