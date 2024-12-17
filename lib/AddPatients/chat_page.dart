import '../MainSelectionScreen/Dashboard.dart';
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
          padding: EdgeInsets.symmetric(vertical: getFontSize(16.0, context), horizontal: getFontSize(8.0, context)),
          child: Column(
            mainAxisSize: MainAxisSize.min, // Keep it minimal height
            children: [
              ListTile(
                title: Center(
                  child: Text(
                    'View patient information',
                    style: TextStyle(fontSize: getFontSize(16, context)),
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
                    style: TextStyle(fontSize: getFontSize(16, context)),
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
        padding: EdgeInsets.symmetric(horizontal: getFontSize(25, context)),
        child: Column(
          children: [
            SizedBox(height: getFontSize(40, context)),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    GestureDetector(
                      onTap: () => Navigator.pop(context),
                      child: Container(
                        height: getFontSize(45, context),
                        width: getFontSize(45, context),
                        decoration: BoxDecoration(
                          color: Colors.grey.shade300,
                          shape: BoxShape.circle,
                        ),
                        child: Icon(Icons.arrow_back),
                      ),
                    ),
                    SizedBox(
                      width: getFontSize(20, context),
                    ),
                    Column(
                      children: [
                        Text(
                          "Janet Okoli",
                          style: TextStyle(
                              fontSize: getFontSize(16, context), fontWeight: FontWeight.bold),
                        ),
                        SizedBox(
                          height: getFontSize(8, context),
                        ),
                        Row(
                          children: [
                            Container(
                              width: getFontSize(12, context),
                              height: getFontSize(12, context),
                              decoration: BoxDecoration(
                                color: Colors.green,
                                shape: BoxShape.circle,
                                border: Border.all(color: Colors.white),
                              ),
                            ),
                            SizedBox(
                              width: getFontSize(8, context),
                            ),
                            Text(
                              "Active now",
                              style:
                                  TextStyle(fontSize: getFontSize(12, context), color: Colors.grey),
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
                      width: getFontSize(44, context),
                      height: getFontSize(44, context),
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
                      width: getFontSize(10, context),
                    ),
                    // Blue dots with click functionality
                    GestureDetector(
                      onTap: () => _showDropdownPopup(context),
                      child: Container(
                        width: getFontSize(44, context),
                        height: getFontSize(44, context),
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
              height: getFontSize(30, context),
            ),
            Center(
              child: Text(
                "Wed 8:12 AM",
                style: TextStyle(
                  fontSize: getFontSize(12, context),
                  color: Colors.grey,
                ),
              ),
            ),
            SizedBox(
              height: getFontSize(20, context),
            ),
            // chat bubbles
            Align(
              alignment: Alignment.centerLeft,
              child: GreyTextBubble(
                  text: "Hello, i'm Dr Nelson!, How can i help you?"),
            ),
            SizedBox(
              height: getFontSize(10, context),
            ),
            Align(
              alignment: Alignment.centerRight,
              child: BlueTextBubble(
                  text:
                      "I am not feeling too well. I woke up with a fever this morning. What should i do?"),
            ),
            SizedBox(
              height: getFontSize(10, context),
            ),
            Align(
              alignment: Alignment.centerLeft,
              child: GreyTextBubble(
                text:
                    "Oh, I see. Sorry about that. Please click on the blue icon at the bottom right of your screen to select your symptoms.",
              ),
            ),
            SizedBox(
              height: getFontSize(10, context),
            ),
            Align(
                alignment: Alignment.centerRight,
                child: BlueTextBubble(text: "Okay")),
            SizedBox(
              height: getFontSize(10, context),
            ),
            Align(
              alignment: Alignment.centerLeft,
              child: GreyTextBubble(text: "Use these medications"),
            ),
            SizedBox(
              height: getFontSize(10, context),
            ),
            Align(
              alignment: Alignment.centerLeft,
              child: Padding(
                padding: EdgeInsets.only(left: getFontSize(10, context)),
                child: Container(
                  width: getFontSize(233, context),
                  height: getFontSize(40, context),
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
                          width: getFontSize(0, context),
                        ),
                        Text(
                          "12/06/2022 - Prescriptions",
                          style:
                              TextStyle(color: Colors.green[900], fontSize: getFontSize(14, context)),
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
                  width: getFontSize(284, context),
                  height: getFontSize(50, context),
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
                                EdgeInsets.symmetric(horizontal: getFontSize(15, context)),
                            border:
                                InputBorder.none, // Remove default underline
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: getFontSize(10, context)),
                        child: SvgPicture.asset("assets/images/pin.svg"),
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: getFontSize(10, context)),
                        child: Image.asset("assets/images/mic.png"),
                      ),
                      SizedBox(
                        width: getFontSize(8, context),
                      )
                    ],
                  ),
                ),
                SizedBox(
                  width: getFontSize(15, context),
                ),
                Container(
                  width: getFontSize(51, context),
                  height: getFontSize(51, context),
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
              height: getFontSize(40, context),
            )
          ],
        ),
      ),
    ));
  }
}