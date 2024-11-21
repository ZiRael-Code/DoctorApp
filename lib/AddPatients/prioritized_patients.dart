import 'package:doctor_app/components/prioritized_patients_tile.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class PrioritizedPatients extends StatefulWidget {
  const PrioritizedPatients({super.key});

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
        padding: const EdgeInsets.symmetric(horizontal: 25),
        child: Column(
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
                const Center(
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
            const SizedBox(height: 35),
            Row(
              children: [
                Container(
                  height: 50,
                  padding: const EdgeInsets.all(4),
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
                      prefixIcon: const Icon(Icons.search),
                      prefixIconColor: Colors.grey[400],
                      enabledBorder: InputBorder.none,
                      border: InputBorder.none,
                    ),
                  ),
                ),
                const SizedBox(
                  width: 15,
                ),
                Container(
                  width: 50,
                  height: 50,
                  decoration: BoxDecoration(
                      color: Colors.grey[200], shape: BoxShape.circle),
                  child: Padding(
                    padding: const EdgeInsets.all(14),
                    child: SvgPicture.asset("assets/images/collapse.svg"),
                  ),
                )
              ],
            ),
            const SizedBox(
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
