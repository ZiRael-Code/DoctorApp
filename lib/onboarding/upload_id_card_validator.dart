import '../MainSelectionScreen/Dashboard.dart';
import 'package:doctor_app/components/my_blue_button.dart';
import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';

class UploadIdCardValidator extends StatelessWidget {
  UploadIdCardValidator({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: EdgeInsets.all(25),
          child: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(
                  height: getFontSize(80, context),
                ),
                Center(
                  child: Column(
                    children: [
                      Image.asset(
                        "assets/images/Frame 1308.png",
                        width: getFontSize(65, context),
                      ),
                      SizedBox(
                        height: getFontSize(60, context),
                      ),
                      Text(
                        "Upload ID Card",
                        style: TextStyle(
                            fontSize: getFontSize(28, context), fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        height: getFontSize(50, context),
                      ),
                      DottedBorder(
                        color: Colors.grey.withOpacity(0.70),
                        radius: Radius.circular(19),
                        dashPattern: [8, 6],
                        borderType: BorderType.RRect,
                        strokeWidth: 2,
                        child: Column(
                          children: [
                            Container(
                              decoration:
                                  BoxDecoration(color: Colors.grey.shade100),
                              width: getFontSize(245, context),
                              height: getFontSize(230, context),
                              child: Column(
                                children: [
                                  SizedBox(
                                    height: getFontSize(60, context),
                                  ),
                                  Image.asset("assets/images/filelogo.png"),
                                  SizedBox(
                                    height: getFontSize(30, context),
                                  ),
                                  Text(
                                    "Accepted formats: .jpg, .png",
                                    style: TextStyle(color: Colors.grey),
                                  ),
                                  SizedBox(
                                    height: getFontSize(20, context),
                                  ),
                                  Container(
                                    padding: EdgeInsets.only(
                                        left: getFontSize(50, context),
                                        right: getFontSize(50, context),
                                        top: getFontSize(10, context),
                                        bottom: getFontSize(10, context)),
                                    decoration: BoxDecoration(
                                        color: Colors.blue,
                                        borderRadius:
                                            BorderRadius.circular(12)),
                                    child: Text(
                                      "Upload Image",
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  )
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                      SizedBox(
                        height: getFontSize(20, context),
                      ),
                      Container(
                        width: getFontSize(174, context),
                        height: getFontSize(45, context),
                        decoration: BoxDecoration(
                            color: Color.fromARGB(255, 208, 232, 252),
                            borderRadius: BorderRadius.circular(12)),
                        child: Center(
                          child: Text(
                            "Change Photo",
                            style: TextStyle(
                                color: Colors.blue,
                                fontWeight: FontWeight.bold,
                                fontSize: getFontSize(12, context)),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
                SizedBox(
                  height: getFontSize(50, context),
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        "Liscence Type",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: getFontSize(14, context)),
                      ),
                    ),
                    SizedBox(
                      height: getFontSize(10, context),
                    ),
                    Container(
                      height: getFontSize(50, context),
                      decoration: BoxDecoration(
                        color: Colors.grey.shade100,
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Padding(
                            padding: EdgeInsets.only(left: getFontSize(10, context)),
                            child: Text(
                              "e.g basic or advanced",
                              style: TextStyle(color: Colors.grey),
                            ),
                          ),
                          IconButton(
                            onPressed: () {},
                            icon: Icon(Icons.arrow_drop_down),
                          )
                        ],
                      ),
                    )
                  ],
                ),
                SizedBox(
                  height: getFontSize(40, context),
                ),
                GestureDetector(
                    onTap: () => Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) =>
                                UploadIdCardValidator())),
                    child: MyBlueButton(text: "Continue"))
              ],
            ),
          ),
        ),
      ),
    );
  }
}