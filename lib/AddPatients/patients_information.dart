import 'package:doctor_app/components/my_blue_button.dart';
import 'package:doctor_app/components/patients_textfield.dart';
import 'package:flutter/material.dart';

class PatientsInformation extends StatefulWidget {
  const PatientsInformation({super.key});

  @override
  State<PatientsInformation> createState() => _PatientsInformationState();
}

class _PatientsInformationState extends State<PatientsInformation> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          padding: const EdgeInsets.symmetric(horizontal: 25),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 40),
              Row(
                children: [
                  GestureDetector(
                    onTap: () => Navigator.pop(context),
                    child: Container(
                      height: 45,
                      width: 45,
                      decoration: BoxDecoration(
                        color: Colors.grey.shade300,
                        shape: BoxShape.circle,
                      ),
                      child: const Icon(Icons.arrow_back),
                    ),
                  ),
                  const SizedBox(width: 60),
                  const Text(
                    "Patients information",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 40),

              // Patient full name
              const Text(
                "Patient full name",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 10),
              const PatientsTextfield(
                height: 50,
                width: 335,
                hinttext: "e.g Janet Okoli",
              ),
              const SizedBox(height: 20),

              // Patient phone number
              const Text(
                "Patient phone number",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 10),
              const PatientsTextfield(
                height: 50,
                width: 335,
                hinttext: "e.g 08011112233",
              ),
              const SizedBox(height: 20),

              // Gender and Age
              const Row(
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
              const SizedBox(height: 20),

              // Blood group and Genotype
              const Row(
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
              const SizedBox(height: 20),

              // Location
              const Text(
                "Location",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 10),
              const PatientsTextfield(
                height: 50,
                width: 335,
                hinttext: "e.g Lagos",
              ),
              const SizedBox(height: 20),

              // Medical history
              const Text(
                "Medical history",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 10),
              const PatientsTextfield(
                height: 160,
                width: 335,
                hinttext: "No medical history available yet",
              ),
              const SizedBox(height: 60),

              // Save button
              const MyBlueButton(text: "Save changes"),
              const SizedBox(height: 30),
            ],
          ),
        ),
      ),
    );
  }
}
