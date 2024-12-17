import '../MainSelectionScreen/Dashboard.dart';
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
        padding: EdgeInsets.symmetric(horizontal: getFontSize(25, context)),
        child: Column(
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
                Center(
                  child: Text(
                    "Prioritized patients",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: getFontSize(20, context),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: getFontSize(35, context)),
            Row(
              children: [
                Container(
                  height: getFontSize(50, context),
                  padding: EdgeInsets.all(4),
                  width: getFontSize(285, context),
                  decoration: BoxDecoration(
                    color: Colors.grey[200],
                    borderRadius: BorderRadius.circular(50),
                  ),
                  child: TextField(
                    onChanged: _filterContacts,
                    decoration: InputDecoration(
                      hintText: "Search by name, vital reading..",
                      hintStyle:
                          TextStyle(fontSize: getFontSize(14, context), color: Colors.grey[400]),
                      prefixIcon: Icon(Icons.search),
                      prefixIconColor: Colors.grey[400],
                      enabledBorder: InputBorder.none,
                      border: InputBorder.none,
                    ),
                  ),
                ),
                SizedBox(
                  width: getFontSize(15, context),
                ),
                Container(
                  width: getFontSize(50, context),
                  height: getFontSize(50, context),
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
              height: getFontSize(20, context),
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