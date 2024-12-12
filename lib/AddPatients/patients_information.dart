import 'package:doctor_app/components/my_blue_button.dart';
import 'package:doctor_app/components/patients_textfield.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class PatientsInformation extends StatefulWidget {
  PatientsInformation({super.key});

  @override
  State<PatientsInformation> createState() => _PatientsInformationState();
}

class _PatientsInformationState extends State<PatientsInformation> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          padding: EdgeInsets.symmetric(horizontal: 25),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 40),
              Row(
                children: [
                  GestureDetector(
                    onTap: () => Navigator.pop(context),
                    child: Container(
                      width: 35,
                      height: 35,
                      padding: EdgeInsets.all(10),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(50),
                        color: Color(0xFFE5E5E5),
                      ),
                      child: SvgPicture.asset(
                        'assets/images/back.svg',
                        width: 8.0,
                        height: 15,
                      ),
                    ),
                  ),
                  SizedBox(width: 60),
                  Text(
                    "Patients information",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                    ),
                  ),
                ],
              ),
              SizedBox(height: 40),

              // Patient full name
              Text(
                "Patient full name",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 10),
              PatientsTextfield(
                height: 50,
                width: 335,
                hinttext: "e.g Janet Okoli",
              ),
              SizedBox(height: 20),

              // Patient phone number
              Text(
                "Patient phone number",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 10),
              PatientsTextfield(
                height: 50,
                width: 335,
                hinttext: "e.g 08011112233",
              ),
              SizedBox(height: 20),

              // Gender and Age
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Gender",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      SizedBox(height: 10),
                      PatientsTextfield(
                        height: 50,
                        width: 157,
                        hinttext: "e.g Male",
                      ),
                    ],
                  ),
                  SizedBox(width: 30),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Age",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      SizedBox(height: 10),
                      PatientsTextfield(
                        height: 50,
                        width: 157,
                        hinttext: "e.g 34",
                      ),
                    ],
                  ),
                ],
              ),
              SizedBox(height: 20),

              // Blood group and Genotype
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Blood group",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      SizedBox(height: 10),
                      PatientsTextfield(
                        height: 50,
                        width: 157,
                        hinttext: "O+",
                      ),
                    ],
                  ),
                  SizedBox(width: 30),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Genotype",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      SizedBox(height: 10),
                      PatientsTextfield(
                        height: 50,
                        width: 157,
                        hinttext: "AS",
                      ),
                    ],
                  ),
                ],
              ),
              SizedBox(height: 20),

              // Location
              Text(
                "Location",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 10),
              PatientsTextfield(
                height: 50,
                width: 335,
                hinttext: "e.g Lagos",
              ),
              SizedBox(height: 20),

              // Medical history
              Text(
                "Medical history",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 10),
              PatientsTextfield(
                height: 160,
                width: 335,
                hinttext: "No medical history available yet",
              ),
              SizedBox(height: 60),

              // Save button
              MyBlueButton(text: "Save changes"),
              SizedBox(height: 30),
            ],
          ),
        ),
      ),
    );
  }
}
