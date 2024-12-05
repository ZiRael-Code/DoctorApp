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
                  height: 80,
                ),
                Center(
                  child: Column(
                    children: [
                      Image.asset(
                        "assets/images/Frame 1308.png",
                        width: 65,
                      ),
                      SizedBox(
                        height: 60,
                      ),
                      Text(
                        "Upload ID Card",
                        style: TextStyle(
                            fontSize: 28, fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        height: 50,
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
                              width: 245,
                              height: 230,
                              child: Column(
                                children: [
                                  SizedBox(
                                    height: 60,
                                  ),
                                  Image.asset("assets/images/filelogo.png"),
                                  SizedBox(
                                    height: 30,
                                  ),
                                  Text(
                                    "Accepted formats: .jpg, .png",
                                    style: TextStyle(color: Colors.grey),
                                  ),
                                  SizedBox(
                                    height: 20,
                                  ),
                                  Container(
                                    padding: EdgeInsets.only(
                                        left: 50,
                                        right: 50,
                                        top: 10,
                                        bottom: 10),
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
                        height: 20,
                      ),
                      Container(
                        width: 174,
                        height: 45,
                        decoration: BoxDecoration(
                            color: Color.fromARGB(255, 208, 232, 252),
                            borderRadius: BorderRadius.circular(12)),
                        child: Center(
                          child: Text(
                            "Change Photo",
                            style: TextStyle(
                                color: Colors.blue,
                                fontWeight: FontWeight.bold,
                                fontSize: 12),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
                SizedBox(
                  height: 50,
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        "Liscence Type",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 14),
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Container(
                      height: 50,
                      decoration: BoxDecoration(
                        color: Colors.grey.shade100,
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Padding(
                            padding: EdgeInsets.only(left: 10),
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
                  height: 40,
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
