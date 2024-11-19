import 'package:doctor_app/AddPatients/add_existing_patient.dart';
import 'package:doctor_app/AddPatients/invite_through_link.dart';
import 'package:flutter/material.dart';

import '../components/contacts_tile.dart';

class AddAPatient extends StatefulWidget {
  const AddAPatient({super.key});

  @override
  State<AddAPatient> createState() => _AddAPatientState();
}

class _AddAPatientState extends State<AddAPatient>
    with TickerProviderStateMixin {
  late TabController _tabController;
  // Define the initial contacts list with ContactsTile objects
  // Full contacts list
  List<String> contacts = [
    "Alexander Trelawney",
    "Blexander Trelawney",
    "Jonathan Mason",
    "Sophia Bennett",
    "Emily Jones",
  ]; // Example contacts

  // Filtered contacts initially set to full contacts list
  List<String> filteredContacts = [
    "Alexander Trelawney",
    "Blexander Trelawney",
    "Jonathan Mason",
    "Sophia Bennett",
  ];

  // Define a list to store filtered contacts based on the search query

  // Filter contacts based on search query
  void _filterContacts(String query) {
    setState(() {
      if (query.isEmpty) {
        filteredContacts =
            contacts; // Reset to show all contacts if search is empty
      } else {
        filteredContacts = contacts
            .where((contact) =>
                contact.toLowerCase().contains(query.toLowerCase()))
            .toList();
      }
    });
  }

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 2, vsync: this);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
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
                  Container(
                    height: 45,
                    width: 45,
                    decoration: BoxDecoration(
                      color: Colors.grey.shade300,
                      shape: BoxShape.circle,
                    ),
                    child: const Icon(Icons.arrow_back),
                  ),
                  const SizedBox(width: 70),
                  const Center(
                    child: Text(
                      "Add a patient",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 10),
              Expanded(
                child: Column(
                  children: [
                    const SizedBox(height: 35),
                    Container(
                      height: 50,
                      padding: const EdgeInsets.all(4),
                      width: double.infinity,
                      decoration: BoxDecoration(
                        color: Colors.grey[200],
                        borderRadius: BorderRadius.circular(50),
                      ),
                      child: TabBar(
                        dividerColor: Colors.transparent,
                        controller: _tabController,
                        indicatorSize: TabBarIndicatorSize.tab,
                        indicator: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(30),
                        ),
                        labelColor: Colors.black,
                        unselectedLabelColor: const Color(0xff4F4F4F),
                        tabs: const [
                          Tab(text: "Add existing patient"),
                          Tab(text: "Invite through link"),
                        ],
                      ),
                    ),
                    const SizedBox(height: 40),
                    Container(
                      height: 50,
                      padding: const EdgeInsets.all(4),
                      width: double.infinity,
                      decoration: BoxDecoration(
                        color: Colors.grey[200],
                        borderRadius: BorderRadius.circular(50),
                      ),
                      child: TextField(
                        onChanged: _filterContacts,
                        decoration: InputDecoration(
                            hintText: "Patient name or Phone number",
                            hintStyle: TextStyle(
                                fontSize: 14, color: Colors.grey[400]),
                            prefixIcon: const Icon(Icons.search),
                            prefixIconColor: Colors.grey[400],
                            enabledBorder: InputBorder.none,
                            border: InputBorder.none),
                      ),
                    ), // Pass the filter method here ),
                    Expanded(
                      child: TabBarView(
                        controller: _tabController,
                        children: [
                          Center(
                              child: AddExistingPatient(
                                  filteredContacts: filteredContacts)),
                          Center(child: InviteThroughLink()),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
