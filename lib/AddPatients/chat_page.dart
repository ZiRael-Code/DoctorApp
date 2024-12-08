import 'package:doctor_app/components/blue_text_bubble.dart';
import 'package:doctor_app/components/grey_text_bubble.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ChatPage extends StatefulWidget {
  ChatPage({super.key});

  @override
  State<ChatPage> createState() => _ChatPageState();
}

class _ChatPageState extends State<ChatPage> {
  void _showDropdownPopup(BuildContext context) {
    showModalBottomSheet(
      context: context,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(16.0), // Rounded corners
      ),
      builder: (context) {
        return Container(
          padding: EdgeInsets.symmetric(vertical: 16.0, horizontal: 8.0),
          child: Column(
            mainAxisSize: MainAxisSize.min, // Keep it minimal height
            children: [
              ListTile(
                title: Center(
                  child: Text(
                    'View patient information',
                    style: TextStyle(fontSize: 16),
                  ),
                ),
                onTap: () {
                  Navigator.pop(context); // Close the popup
                  // Handle "View patient information" action
                },
              ),
              Divider(), // Divider between options
              ListTile(
                title: Center(
                  child: Text(
                    'Add to prioritized patients',
                    style: TextStyle(fontSize: 16),
                  ),
                ),
                onTap: () {
                  Navigator.pop(context); // Close the popup
                  // Handle "Add to prioritized patients" action
                },
              ),
            ],
          ),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 25),
        child: Column(
          children: [
            SizedBox(height: 40),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    GestureDetector(
                      onTap: () => Navigator.pop(context),
                      child: Container(
                        height: 45,
                        width: 45,
                        decoration: BoxDecoration(
                          color: Colors.grey.shade300,
                          shape: BoxShape.circle,
                        ),
                        child: Icon(Icons.arrow_back),
                      ),
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Column(
                      children: [
                        Text(
                          "Janet Okoli",
                          style: TextStyle(
                              fontSize: 16, fontWeight: FontWeight.bold),
                        ),
                        SizedBox(
                          height: 8,
                        ),
                        Row(
                          children: [
                            Container(
                              width: 12,
                              height: 12,
                              decoration: BoxDecoration(
                                color: Colors.green,
                                shape: BoxShape.circle,
                                border: Border.all(color: Colors.white),
                              ),
                            ),
                            SizedBox(
                              width: 8,
                            ),
                            Text(
                              "Active now",
                              style:
                                  TextStyle(fontSize: 12, color: Colors.grey),
                            )
                          ],
                        ),
                      ],
                    )
                  ],
                ),
                Row(
                  children: [
                    Container(
                      width: 44,
                      height: 44,
                      decoration: BoxDecoration(
                          shape: BoxShape.circle, color: Colors.blue[100]),
                      child: Container(
                        padding: EdgeInsets.all(12),
                        child: SvgPicture.asset(
                          "assets/images/phones.svg",
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    // Blue dots with click functionality
                    GestureDetector(
                      onTap: () => _showDropdownPopup(context),
                      child: Container(
                        width: 44,
                        height: 44,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: Colors.blue[100],
                        ),
                        child: Container(
                          padding: EdgeInsets.all(12),
                          child: SvgPicture.asset(
                            "assets/images/bluedots.svg",
                          ),
                        ),
                      ),
                    ),
                  ],
                )
              ],
            ),
            SizedBox(
              height: 30,
            ),
            Center(
              child: Text(
                "Wed 8:12 AM",
                style: TextStyle(
                  fontSize: 12,
                  color: Colors.grey,
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            // chat bubbles
            Align(
              alignment: Alignment.centerLeft,
              child: GreyTextBubble(
                  text: "Hello, i'm Dr Nelson!, How can i help you?"),
            ),
            SizedBox(
              height: 10,
            ),
            Align(
              alignment: Alignment.centerRight,
              child: BlueTextBubble(
                  text:
                      "I am not feeling too well. I woke up with a fever this morning. What should i do?"),
            ),
            SizedBox(
              height: 10,
            ),
            Align(
              alignment: Alignment.centerLeft,
              child: GreyTextBubble(
                text:
                    "Oh, I see. Sorry about that. Please click on the blue icon at the bottom right of your screen to select your symptoms.",
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Align(
                alignment: Alignment.centerRight,
                child: BlueTextBubble(text: "Okay")),
            SizedBox(
              height: 10,
            ),
            Align(
              alignment: Alignment.centerLeft,
              child: GreyTextBubble(text: "Use these medications"),
            ),
            SizedBox(
              height: 10,
            ),
            Align(
              alignment: Alignment.centerLeft,
              child: Padding(
                padding: EdgeInsets.only(left: 10),
                child: Container(
                  width: 233,
                  height: 40,
                  decoration: BoxDecoration(
                      border: Border.all(color: Colors.green),
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.greenAccent[100]),
                  child: Center(
                    child: Row(
                      children: [
                        Padding(
                          padding: EdgeInsets.all(12),
                          child: SvgPicture.asset("assets/images/pills.svg"),
                        ),
                        SizedBox(
                          width: 0,
                        ),
                        Text(
                          "12/06/2022 - Prescriptions",
                          style:
                              TextStyle(color: Colors.green[900], fontSize: 14),
                        )
                      ],
                    ),
                  ),
                ),
              ),
            ),
            Spacer(),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Container(
                  width: 284,
                  height: 50,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    border: Border.all(color: Colors.grey.shade300),
                  ),
                  child: Row(
                    children: [
                      Expanded(
                        child: TextField(
                          decoration: InputDecoration(
                            hintText: "Type a message...",
                            hintStyle: TextStyle(
                                color: Colors.grey,
                                fontWeight: FontWeight.normal),
                            contentPadding:
                                EdgeInsets.symmetric(horizontal: 15),
                            border:
                                InputBorder.none, // Remove default underline
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 10),
                        child: SvgPicture.asset("assets/images/pin.svg"),
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 10),
                        child: Image.asset("assets/images/mic.png"),
                      ),
                      SizedBox(
                        width: 8,
                      )
                    ],
                  ),
                ),
                SizedBox(
                  width: 15,
                ),
                Container(
                  width: 51,
                  height: 51,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.blue,
                  ),
                  child: Icon(
                    Icons.add,
                    color: Colors.white,
                  ),
                )
              ],
            ),
            SizedBox(
              height: 40,
            )
          ],
        ),
      ),
    ));
  }
}
