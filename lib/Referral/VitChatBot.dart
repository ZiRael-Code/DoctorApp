import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';


void main(){
  runApp(const VitChatBot());
}

class VitChatBot extends StatefulWidget {
  const VitChatBot({super.key});
  @override
  _AppointmentPaymentScreen createState() => _AppointmentPaymentScreen();
}

class _AppointmentPaymentScreen extends  State<VitChatBot> {
  String? _selectedValue;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
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
              const Spacer(),
              Container(
                alignment: Alignment.center,
                child:
                Row(
                  children: [
                    Image.asset("assets/images/vit.jpg"),
                    const SizedBox(width: 10),
                    Column(
                      children: [

                        Row(children: [
                        const Text(
                          'Vit the Chatbot',
                          style: TextStyle(
                            color: Colors.black, // Black text color
                            fontSize: 16, // Font size 16
                          ),
                        ),
                          const SizedBox(width: 7,),
                          SvgPicture.asset("assets/images/verified.svg")
                        ],),
                      const SizedBox(height: 8,),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
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
                            ),
                          ),
                        ],
                    ),
                      ],),
                  ],
                ),
              ),
              const Spacer(),

            ],
          ),
          centerTitle: true,
        ),
        body: Container(
          padding: const EdgeInsets.only(left: 15, right: 15, top: 25, bottom: 25),
          child: Column(
            children: [
              const SizedBox(height: 20),
              const Text("Wed 8:21 AM"),
              const SizedBox(height: 70),

           incomingMessage(
               text: 'Hello, I’m Vit! 😁👋 How can I help you?'),
              const SizedBox(height: 40,),
              outGoingMessage(text: "How do I use my device?"),

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
}){
    return Align(
      alignment: Alignment.centerLeft,
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Container(
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
            ),
          ),
        ],
      ),
    );

  }

outGoingMessage({
  required String text,
}){
  return Align(
    alignment: Alignment.centerRight,
    child: Row(
      mainAxisSize: MainAxisSize.min,
      children: [
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
      ],
    ),
  );
}





}