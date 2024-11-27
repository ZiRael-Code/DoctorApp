import 'package:doctor_app/Call_MessagePatient/VideoCalling.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import 'CallPatient.dart';

class Chat extends StatefulWidget {
  const Chat({super.key});
  @override
  _ChatState createState() => _ChatState();
}

class _ChatState extends  State<Chat> {
  String? _selectedValue;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
            backgroundColor: Colors.white,
            appBar: AppBar(
              title: Row(
                children: [
                  Container(
                    width: 35,
                    height: 35,
                    padding: const EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(50),
                      color: const Color(0xFFE5E5E5),
                    ),
                    child: SvgPicture.asset('assets/images/back.svg',
                      width: 8.0,
                      height: 15,),
                  ),
                  const SizedBox(width: 25,),
                  Align(
                    alignment: Alignment.centerLeft,
                    child:
                    Column(children: [
                      const Text('Dr. Nelson Yang', style: TextStyle(fontSize: 18),),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Align(
                            alignment: Alignment.centerLeft,
                            child:
                            Container(
                              decoration: const BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: Color(0xFF218130)
                              ),
                              width: 11,
                              height: 11,
                            ),
                          ),

                          const SizedBox(width: 7,),
                          const Text(
                              'Active now',
                              style: TextStyle(
                                color: Color(0xff2E2E42),
                                fontSize: 16,
                              ))],
                      ),
                    ],),),
                  const Spacer(),
                  InkWell(
                    onTap: (){
                      print("lol works ");
                      showCallMenuBottomSheet(context);
                    },
                    child:
                  Container(
                    padding: const EdgeInsets.all(14),
                    decoration: const BoxDecoration(
                        color: Color(0xffE2EDFF),
                        shape: BoxShape.circle
                    ),
                    child: const Icon(Icons.call, color: Colors.blue,),
                  ),
                  ),
                  const SizedBox(width: 12,),
                  Container(
                    padding: const EdgeInsets.all(14),
                    decoration: const BoxDecoration(
                        color: Color(0xffE2EDFF),
                        shape: BoxShape.circle
                    ),
                    child: const Icon(Icons.more_horiz_rounded, color: Colors.blue,),
                  )
                ],
              ),
              centerTitle: true,
            ),
            body:

            Container(
              padding: const EdgeInsets.only(left: 15, right: 15, top: 25, bottom: 25),
              child:
              Column(
                children: [
                  SingleChildScrollView(
                      scrollDirection: Axis.vertical,
                      child: Expanded(
                        child:
                        Column(
                            children: [
                              const SizedBox(height: 20),
                              const Text("Wed 8:21 AM"),
                              const SizedBox(height: 70),

                              incomingMessage(
                                  text: 'Hello, I’m Dr. Nelson! 👋How can I help you?'),
                              outGoingMessage(text: "I am not feeling too well. I woke up with a fever this morning. What should i do?"),

                              incomingMessage(
                                  text: 'Oh, I see. Sorry about that. Please click on the blue icon at the bottom right of your screen to select your symptoms.'),
                              outGoingMessage(text: "Okay"),

                              incomingMessage(
                                  text: 'Use these medications'),

                              Align(
                                alignment: Alignment.centerLeft,
                                child:
                                Container(
                                  padding: const EdgeInsets.all(8),
                                  decoration: BoxDecoration(
                                    color: const Color(0x331BD939).withOpacity(0.080),
                                    borderRadius: BorderRadius.circular(20),
                                    border: Border.all(
                                      color: const Color(0x4D218130).withOpacity(0.070),
                                      width: 2, // Border width
                                    ),
                                  ),
                                  child: Row(
                                    mainAxisSize: MainAxisSize.min,
                                    children: [
                                      SvgPicture.asset('assets/images/pill1.svg'),
                                      const SizedBox(width: 8),
                                      // Text content
                                      const Text(
                                        '12/06/2022 - ',
                                        style: TextStyle(
                                          color: Color(0xff218130),
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                      const Text(
                                        'Prescriptions',
                                        style: TextStyle(
                                          color: Color(0xff218130),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),

                              // Spacer(),
                            ]),
                      )
                  ),
                  const Spacer(),

                  Row(

                    children: [
                      // TextField
                      Expanded(
                        child: TextField(
                          decoration: InputDecoration(
                            hintText: 'Type a message...',
                            contentPadding: const EdgeInsets.symmetric(vertical: 15, horizontal: 20),
                            filled: true,
                            fillColor: Colors.white,
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(40),
                              borderSide: const BorderSide(
                                color: Color(0x66BFBFBF),
                                width: 0.5,
                              ),
                            ),
                            enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(40),
                              borderSide: const BorderSide(
                                color: Color(0x66BFBFBF),
                                width: 0.5,
                              ),
                            ),
                            suffixIcon: SizedBox(
                              width: 96,
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  IconButton(
                                    icon: const Icon(Icons.attach_file, color: Colors.grey),
                                    onPressed: () {
                                    },
                                  ),
                                  IconButton(
                                    icon: const Icon(Icons.mic, color: Colors.grey),
                                    onPressed: () {
                                    },
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),

                      const SizedBox(width: 10),

                      Container(
                        width: 51,
                        height: 51,
                        decoration: const BoxDecoration(
                          color: Colors.blue,
                          shape: BoxShape.circle,
                        ),
                        child: const Icon(Icons.add, color: Colors.white),
                      ),
                    ],
                  ),

                ],
              ),
              ),


            ));


  }
  incomingMessage({
    required String text,
  }) {
    return Container(
      child: Column(
        children: [
          Align(
            alignment: Alignment.centerLeft,
            child: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                ConstrainedBox(
                  constraints: const BoxConstraints(
                    maxWidth: 260,
                  ),
                  child: Container(
                    padding: const EdgeInsets.all(16),
                    decoration: const BoxDecoration(
                      color: Color(0xFFF2F4F5),
                      borderRadius: BorderRadius.only(
                        topRight: Radius.circular(20),
                        topLeft: Radius.circular(20),
                        bottomRight: Radius.circular(20),
                      ),
                    ),
                    child: Text(
                      text,
                      style: const TextStyle(
                        fontSize: 14,
                      ),
                      softWrap: true, // Ensure the text wraps when needed
                    ),
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(height: 20),
        ],
      ),
    );
  }


  outGoingMessage({
    required String text,
  }){
    return Column(children: [
      Align(
        alignment: Alignment.centerRight,
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            ConstrainedBox(
              constraints: const BoxConstraints(
                maxWidth: 301,
              ),
              child:
              Container(
                padding: const EdgeInsets.all(16),
                decoration: const BoxDecoration(
                  color: Color(0xFF3C8AFF),
                  borderRadius: BorderRadius.only(
                    topRight: Radius.circular(20),
                    bottomLeft: Radius.circular(20),
                    topLeft: Radius.circular(20),
                  ),
                ),
                child: Text(
                  text,
                  style: const TextStyle(
                    fontSize: 14,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
      const SizedBox(height: 20,),
    ]
    );
  }

  void showCallMenuBottomSheet(BuildContext context) {
    showModalBottomSheet(
      context: context,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(
          top: Radius.circular(16), // Rounded top corners for the bottom sheet
        ),
      ),
      builder: (BuildContext sheetContext) {
        return Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisSize: MainAxisSize.min, // Wrap content to avoid full height
            children: [
              // Title
              const Text(
                "Call",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 18,
                ),
              ),
              const SizedBox(height: 20),
              // Voice Call and Video Call Buttons
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  // Voice Call Button
                  Container(
                    width: 86,
                    height: 86,
                    decoration: const BoxDecoration(
                      color: Color(0xffE2EDFF),
                      shape: BoxShape.circle,
                    ),
                    child: IconButton(
                      icon: const Icon(
                        Icons.call,
                        color: Colors.blue,
                        size: 46,
                      ),
                      onPressed: () {
                        // Handle voice call action
                        Navigator.of(context).push(MaterialPageRoute(builder: (builder)=> const CallingUi())); // Close the bottom sheet
                      },
                    ),
                  ),
                  // Video Call Button
                  Container(
                    width: 86,
                    height: 86,
                    decoration: const BoxDecoration(
                      color: Color(0xffE2EDFF),
                      shape: BoxShape.circle,
                    ),
                    child: IconButton(
                      icon: const Icon(
                        Icons.video_call,
                        color: Colors.blue,
                        size: 46,
                      ),
                      onPressed: () {
                        // Handle video call action
                        Navigator.of(context).push(MaterialPageRoute(builder: (builder)=> const VideoCalling())); // Close the bottom sheet// Close the bottom sheet
                      },
                    ),
                  ),
                ],
              ),
              // Cancel Button

            ],
          ),
        );
      },
    );
  }




}