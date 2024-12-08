import 'package:flutter/material.dart';
import '../components/my_blue_button.dart';
import '../components/my_selected.dart';

class SetAppointmentTimes2 extends StatelessWidget {
  SetAppointmentTimes2({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: EdgeInsets.all(25),
          child: Column(
            children: [
              SizedBox(
                height: 40,
              ),
              Row(
                children: [
                  Container(
                    height: 45,
                    width: 45,
                    decoration: BoxDecoration(
                        color: Colors.grey.shade300, shape: BoxShape.circle),
                    child: Icon(Icons.arrow_back),
                  ),
                  SizedBox(
                    width: 110,
                  ),
                  Center(
                    child: Image.asset(
                      "assets/images/frames.png",
                      width: 65,
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 40,
              ),
              Column(
                children: [
                  Text(
                    "Set appointment",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 28,
                    ),
                  ),
                  Text(
                    "times",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 28,
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 30,
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      "Specialzation",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 14),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Container(
                    height: 50,
                    decoration: BoxDecoration(
                      color: Colors.grey.shade200,
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Padding(
                          padding: EdgeInsets.only(left: 10),
                          child: Text(
                            "e.g cardiologist",
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
                height: 15,
              ),

              // add available times
              Align(
                alignment: Alignment.centerLeft,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Add available times",
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Row(
                      children: [
                        MySelected(
                          text: "+ Add time",
                          isSelected: false,
                          height: 38,
                          width: 88,
                        ),
                        SizedBox(
                          width: 15,
                        ),
                        MySelected(
                          text: "11:00AM - 3:00AM",
                          isSelected: false,
                          height: 38,
                          width: 138,
                        ),
                        SizedBox(
                          width: 15,
                        ),
                        MySelected(
                          text: "12:30AM",
                          isSelected: false,
                          height: 38,
                          width: 88,
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Text(
                      "Add available times",
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Wrap(
                      runSpacing: 10.0,
                      children: [
                        MySelected(
                          text: "+ Add days",
                          isSelected: false,
                          height: 38,
                          width: 88,
                        ),
                        SizedBox(
                          width: 15,
                        ),
                        MySelected(
                          text: "MON",
                          isSelected: false,
                          height: 38,
                          width: 88,
                        ),
                        SizedBox(
                          width: 15,
                        ),
                        MySelected(
                          text: "WED",
                          isSelected: false,
                          height: 38,
                          width: 88,
                        ),
                        SizedBox(
                          width: 15,
                        ),
                        MySelected(
                          text: "THR",
                          isSelected: false,
                          height: 38,
                          width: 88,
                        ),
                        SizedBox(
                          width: 15,
                        ),
                        MySelected(
                          text: "FRI",
                          isSelected: false,
                          height: 38,
                          width: 88,
                        ),
                      ],
                    )
                  ],
                ),
              ),
              Spacer(),
              MyBlueButton(text: "Continue"),
              SizedBox(
                height: 30,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
