import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';


void main(){
  runApp(const HowItWorks());
}

class HowItWorks extends StatefulWidget {
  const HowItWorks({super.key});
  @override
  _HowItWorksScreen createState() => _HowItWorksScreen();
}

class _HowItWorksScreen extends  State<HowItWorks> {
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
                const Center(child: Text(
                  'How It Work',
                  style: TextStyle(
                      fontSize: 20,
                      fontStyle: FontStyle.normal
                  ),
                ),
                ),
              ),
              const Spacer(),

            ],
          ),
          centerTitle: true,
        ),
        body:
        Container(
            padding: const EdgeInsets.all(15),
            child: Column(children: [
              how(
                text: "How to take vital readings with your device",
              ),

              how(
                text: "How to book an appointment",
              ),

              how(
                text: "How to take vital readings with your device",
              ),

              how(
                text: "How to become an interpreter for others",
              ),

              how(
                text: "How to book an appointment",
              ),

              how(
                text: "How to become an interpreter for others",
              ),

          ]
            ),


    )));
  }

  how({
    required String text
  }) {
    return Column(children: [
      Row(children: [
      SizedBox(
        width: 240,
        child: Text(text, style: const TextStyle(
          fontSize: 16,
        ),),
      ),
      const Spacer(),
      const Icon(Icons.arrow_forward_ios_rounded),
    ],),
      const SizedBox(height: 12,),
      SvgPicture.asset("assets/images/line.svg"),
      const SizedBox(height: 20)
    ]
    );
  }
}