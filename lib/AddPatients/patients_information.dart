import '../MainSelectionScreen/Dashboard.dart';
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
          padding: EdgeInsets.symmetric(horizontal: getFontSize(25, context)),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: getFontSize(40, context)),
              Row(
                children: [
                  GestureDetector(
                    onTap: () => Navigator.pop(context),
                    child: Container(
                      width: getFontSize(35, context),
                      height: getFontSize(35, context),
                      padding: EdgeInsets.all(10),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(50),
                        color: Color(0xFFE5E5E5),
                      ),
                      child: SvgPicture.asset(
                        'assets/images/back.svg',
                        width: getFontSize(8.0, context),
                        height: getFontSize(15, context),
                      ),
                    ),
                  ),
                  SizedBox(width: getFontSize(60, context)),
                  Text(
                    "Patients information",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: getFontSize(20, context),
                    ),
                  ),
                ],
              ),
              SizedBox(height: getFontSize(40, context)),

              // Patient full name
              Text(
                "Patient full name",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              SizedBox(height: getFontSize(10, context)),
              PatientsTextfield(
                height: getFontSize(50, context),
                width: getFontSize(335, context),
                hinttext: "e.g Janet Okoli",
              ),
              SizedBox(height: getFontSize(20, context)),

              // Patient phone number
              Text(
                "Patient phone number",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              SizedBox(height: getFontSize(10, context)),
              PatientsTextfield(
                height: getFontSize(50, context),
                width: getFontSize(335, context),
                hinttext: "e.g 08011112233",
              ),
              SizedBox(height: getFontSize(20, context)),

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
                      SizedBox(height: getFontSize(10, context)),
                      PatientsTextfield(
                        height: getFontSize(50, context),
                        width: getFontSize(157, context),
                        hinttext: "e.g Male",
                      ),
                    ],
                  ),
                  SizedBox(width: getFontSize(30, context)),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Age",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      SizedBox(height: getFontSize(10, context)),
                      PatientsTextfield(
                        height: getFontSize(50, context),
                        width: getFontSize(157, context),
                        hinttext: "e.g 34",
                      ),
                    ],
                  ),
                ],
              ),
              SizedBox(height: getFontSize(20, context)),

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
                      SizedBox(height: getFontSize(10, context)),
                      PatientsTextfield(
                        height: getFontSize(50, context),
                        width: getFontSize(157, context),
                        hinttext: "O+",
                      ),
                    ],
                  ),
                  SizedBox(width: getFontSize(30, context)),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Genotype",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      SizedBox(height: getFontSize(10, context)),
                      PatientsTextfield(
                        height: getFontSize(50, context),
                        width: getFontSize(157, context),
                        hinttext: "AS",
                      ),
                    ],
                  ),
                ],
              ),
              SizedBox(height: getFontSize(20, context)),

              // Location
              Text(
                "Location",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              SizedBox(height: getFontSize(10, context)),
              PatientsTextfield(
                height: getFontSize(50, context),
                width: getFontSize(335, context),
                hinttext: "e.g Lagos",
              ),
              SizedBox(height: getFontSize(20, context)),

              // Medical history
              Text(
                "Medical history",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              SizedBox(height: getFontSize(10, context)),
              PatientsTextfield(
                height: getFontSize(160, context),
                width: getFontSize(335, context),
                hinttext: "No medical history available yet",
              ),
              SizedBox(height: getFontSize(60, context)),

              // Save button
              MyBlueButton(text: "Save changes"),
              SizedBox(height: getFontSize(30, context)),
            ],
          ),
        ),
      ),
    );
  }
}