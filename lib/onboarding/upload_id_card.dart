import 'package:flutter/material.dart';
import 'package:dotted_border/dotted_border.dart';

class UploadIdCard extends StatelessWidget {
  const UploadIdCard({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(25),
          child: Column(
            children: [
              const SizedBox(
                height: 80,
              ),
              Center(
                child: Column(
                  children: [
                    Image.asset(
                      "assets/images/Frame 1308.png",
                      width: 65,
                    ),
                    const SizedBox(
                      height: 60,
                    ),
                    const Text(
                      "Upload ID Card",
                      style:
                          TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
                    ),
                    const SizedBox(
                      height: 50,
                    ),
                    DottedBorder(
                      color: Colors.grey.withOpacity(0.70),
                      radius: const Radius.circular(19),
                      dashPattern: const [8, 6],
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
                                const SizedBox(
                                  height: 60,
                                ),
                                Image.asset("assets/images/filelogo.png"),
                                const SizedBox(
                                  height: 30,
                                ),
                                const Text(
                                  "Accepted formats: .jpg, .png",
                                  style: TextStyle(color: Colors.grey),
                                ),
                                const SizedBox(
                                  height: 20,
                                ),
                                Container(
                                  padding: const EdgeInsets.only(
                                      left: 50, right: 50, top: 10, bottom: 10),
                                  decoration: BoxDecoration(
                                      color: Colors.blue,
                                      borderRadius: BorderRadius.circular(12)),
                                  child: const Text(
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
                  ],
                ),
              ),
              const SizedBox(
                height: 50,
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  const Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      "Liscence Type",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 14),
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Container(
                    height: 50,
                    decoration: BoxDecoration(
                      color: Colors.grey.shade100,
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: const Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Padding(
                          padding: EdgeInsets.only(left: 10),
                          child: Text(
                            "e.g basic or advanced",
                            style: TextStyle(color: Colors.grey),
                          ),
                        ),
                        Icon(Icons.arrow_drop_down)
                      ],
                    ),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
