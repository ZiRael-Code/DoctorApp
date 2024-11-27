import 'package:doctor_app/AddPatients/add_a_patient.dart';
import 'package:doctor_app/AddPatients/messages.dart';
import 'package:doctor_app/AllPatientReading/AllPatientReading.dart';
import 'package:doctor_app/Call_MessagePatient/SearchPatient.dart';
import 'package:flutter/material.dart';

class Patients extends StatefulWidget {
  const Patients({super.key});

  @override
  State<Patients> createState() => _PatientsState();
}

class _PatientsState extends State<Patients> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Patients",
          style: TextStyle(fontSize: 26, fontWeight: FontWeight.w500),
        ),
        actions: [
          IconButton(
            icon: const Icon(
              Icons.stars_rounded,
              size: 36,
            ),
            onPressed: () {
              // Search logic here
            },
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(12),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                actions(
                  context,
                  Icons.add,
                  "Add new patient",
                  MaterialPageRoute(builder: (builder) => const AddAPatient()),
                ),
                actions(context, Icons.message, "Message patients",
                    MaterialPageRoute(builder: (builder) => const Messages())),
                actions(
                    context,
                    Icons.edit_note,
                    "Patient’s readings",
                    MaterialPageRoute(
                        builder: (builder) => const AllPatientReading())),
                actions(
                    context,
                    Icons.search,
                    "Search for patients",
                    MaterialPageRoute(
                        builder: (builder) => const Searchpatient())),
              ],
            ),
            const SizedBox(
              height: 30,
            ),
            Expanded(
                child: SingleChildScrollView(
              child: Column(
                children: [
                  request_tile(
                      name: "Olorunsogo Janet",
                      profile_path: "assets/images/doc.png",
                      date: "12th Jun 2022"),
                  request_tile(
                      name: "Salami Kelvin",
                      profile_path: "assets/images/doc.png",
                      date: "12th Jun 2022"),
                  request_tile(
                      name: "Olorunsogo Janet",
                      profile_path: "assets/images/doc.png",
                      date: "12th Jun 2022"),
                  request_tile(
                      name: "Salami Kelvin",
                      profile_path: "assets/images/doc.png",
                      date: "12th Jun 2022"),
                  request_tile(
                      name: "Olorunsogo Janet",
                      profile_path: "assets/images/doc.png",
                      date: "12th Jun 2022"),
                  request_tile(
                      name: "Salami Kelvin",
                      profile_path: "assets/images/doc.png",
                      date: "12th Jun 2022"),
                  request_tile(
                      name: "Olorunsogo Janet",
                      profile_path: "assets/images/doc.png",
                      date: "12th Jun 2022"),
                  request_tile(
                      name: "Salami Kelvin",
                      profile_path: "assets/images/doc.png",
                      date: "12th Jun 2022"),
                ],
              ),
            ))
          ],
        ),
      ),
    );
  }

  request_tile(
      {required String name,
      required profile_path, // Pass the profile path
      required String date}) {
    return Container(
      child: Column(
        children: [
          const SizedBox(height: 5),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SizedBox(
                  width: 50,
                  height: 50,
                  child: CircleAvatar(
                    radius: 50,
                    backgroundImage: AssetImage(profile_path),
                  )),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      name,
                      style: const TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  const SizedBox(height: 2),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      "Requesting to be a patient",
                      style: TextStyle(
                        color: Colors.grey[400],
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(width: 10),
              Column(children: [
                Container(
                  width: 79,
                  height: 27,
                  decoration: BoxDecoration(
                    color: Colors.blue,
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: TextButton(
                    onPressed: () {}, // Trigger the callback
                    child: const Text(
                      "View details",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 10,
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                Text(date)
              ])
            ],
          ),
          const SizedBox(height: 5),
          SizedBox(
            width: 350,
            child: Divider(
              color: Colors.grey[300],
            ),
          )
        ],
      ),
    );
  }
}

actions(BuildContext context, IconData icon, String text,
    MaterialPageRoute action) {
  return GestureDetector(
      onTap: () {
        Navigator.of(context).push(action);
      },
      child: Column(
        children: [
          Container(
            padding: const EdgeInsets.all(12),
            decoration: const BoxDecoration(
                shape: BoxShape.circle, color: Color(0xffE2EDFF)),
            child: Icon(
              icon,
              size: 36,
              color: Colors.blue,
            ),
          ),
          const SizedBox(
            height: 12,
          ),
          SizedBox(
            width: 62,
            child: Text(
              text,
              textAlign: TextAlign.center,
              style: const TextStyle(fontSize: 12, fontWeight: FontWeight.w400),
            ),
          )
        ],
      ));
}
