import 'package:flutter/material.dart';

import '../components/contacts_tile.dart';

class AddExistingPatient extends StatelessWidget {
  final List<String> filteredContacts;
  const AddExistingPatient({
    super.key,
    required this.filteredContacts,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: filteredContacts.isEmpty
          ? Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset("assets/images/patients.png"),
                  const SizedBox(height: 20),
                  const Text(
                    "No patients found",
                    style: TextStyle(color: Colors.grey, fontSize: 16),
                  ),
                  const Text("Click on the search bar to look for patients",
                      style: TextStyle(color: Colors.grey, fontSize: 16)),
                ],
              ),
            )
          : ListView.builder(
              itemCount: filteredContacts.length,
              itemBuilder: (context, index) {
                final contact = filteredContacts[index];
                // Display each filtered contact
                return ContactsTile(name: contact, phonenumber: "08028643738");
              },
            ),
    );
  }
}
