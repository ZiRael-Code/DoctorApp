import 'package:doctor_app/components/prioritized_patients_tile.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class PrioritizedPatients extends StatefulWidget {
  PrioritizedPatients({super.key});

  @override
  State<PrioritizedPatients> createState() => _PrioritizedPatientsState();
}

class _PrioritizedPatientsState extends State<PrioritizedPatients> {
  List<String> contacts = [
    "Alexander Trelawney",
    "Blexander Trelawney",
    "Jonathan Mason",
    "Sophia Bennett",
    "Emily Jones",
  ];

  List<String> filteredContacts = [
    "Alexander Trelawney",
    "Blexander Trelawney",
    "Jonathan Mason",
    "Sophia Bennett",
    "Emily Jones",
  ];

  void _filterContacts(String query) {
    setState(() {
      if (query.isEmpty) {
        filteredContacts = contacts;
      } else {
        filteredContacts = contacts
            .where((contact) =>
                contact.toLowerCase().contains(query.toLowerCase()))
            .toList();
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 25),
        child: Column(
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
                Center(
                  child: Text(
                    "Prioritized patients",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 35),
            Row(
              children: [
                Container(
                  height: 50,
                  padding: EdgeInsets.all(4),
                  width: 285,
                  decoration: BoxDecoration(
                    color: Colors.grey[200],
                    borderRadius: BorderRadius.circular(50),
                  ),
                  child: TextField(
                    onChanged: _filterContacts,
                    decoration: InputDecoration(
                      hintText: "Search by name, vital reading..",
                      hintStyle:
                          TextStyle(fontSize: 14, color: Colors.grey[400]),
                      prefixIcon: Icon(Icons.search),
                      prefixIconColor: Colors.grey[400],
                      enabledBorder: InputBorder.none,
                      border: InputBorder.none,
                    ),
                  ),
                ),
                SizedBox(
                  width: 15,
                ),
                Container(
                  width: 50,
                  height: 50,
                  decoration: BoxDecoration(
                      color: Colors.grey[200], shape: BoxShape.circle),
                  child: Padding(
                    padding: EdgeInsets.all(14),
                    child: SvgPicture.asset("assets/images/collapse.svg"),
                  ),
                )
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Expanded(
              child: ListView.builder(
                  itemCount: contacts.length,
                  itemBuilder: (context, index) {
                    return PrioritizedPatientsTile(
                      name: contacts[index],
                    );
                  }),
            )
          ],
        ),
      ),
    ));
  }
}
