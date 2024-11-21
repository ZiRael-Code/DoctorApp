import 'package:flutter/material.dart';
import '../components/my_blue_button.dart';
import '../components/my_selected.dart';

class SetAppointmentTimes2 extends StatelessWidget {
  const SetAppointmentTimes2({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(25),
          child: Column(
            children: [
              const SizedBox(
                height: 40,
              ),
              Row(
                children: [
                  Container(
                    height: 45,
                    width: 45,
                    decoration: BoxDecoration(
                        color: Colors.grey.shade300, shape: BoxShape.circle),
                    child: const Icon(Icons.arrow_back),
                  ),
                  const SizedBox(
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
              const SizedBox(
                height: 40,
              ),
              const Column(
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
              const SizedBox(
                height: 30,
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  const Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      "Specialzation",
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
                      color: Colors.grey.shade200,
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Padding(
                          padding: EdgeInsets.only(left: 10),
                          child: Text(
                            "e.g cardiologist",
                            style: TextStyle(color: Colors.grey),
                          ),
                        ),
                        IconButton(
                          onPressed: () {},
                          icon: const Icon(Icons.arrow_drop_down),
                        )
                      ],
                    ),
                  )
                ],
              ),
              const SizedBox(
                height: 15,
              ),

              // add available times
              const Align(
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
              const Spacer(),
              const MyBlueButton(text: "Continue"),
              const SizedBox(
                height: 30,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
