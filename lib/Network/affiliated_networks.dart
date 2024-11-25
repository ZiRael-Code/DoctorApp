import 'package:doctor_app/components/network_tile.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
// import 'network_tile.dart'; // Import the NetworkTile component

class AffiliatedNetworks extends StatefulWidget {
  const AffiliatedNetworks({super.key});

  @override
  State<AffiliatedNetworks> createState() => _AffiliatedNetworksState();
}

class _AffiliatedNetworksState extends State<AffiliatedNetworks> {
  List<Map<String, dynamic>> contacts = [
    {
      "name": "Guild of Nigerian Dentists",
      "imagePath": "assets/images/guild.png",
      "description": "A network for dentists in Nigeria to discuss...",
      "joined": false,
    },
    {
      "name": "Guild of Nigerian Dentists",
      "imagePath": "assets/images/guild.png",
      "description": "A network for dentists in Nigeria to discuss...",
      "joined": false,
    },
    {
      "name": "Guild of Nigerian Dentists",
      "imagePath": "assets/images/guild.png",
      "description": "A network for dentists in Nigeria to discuss...",
      "joined": false,
    },
    {
      "name": "Guild of Nigerian Dentists",
      "imagePath": "assets/images/guild.png",
      "description": "A network for dentists in Nigeria to discuss...",
      "joined": false,
    },
  ];

  List<Map<String, dynamic>> filteredContacts = [];

  @override
  void initState() {
    super.initState();
    filteredContacts = contacts;
  }

  void _filterContacts(String query) {
    setState(() {
      if (query.isEmpty) {
        filteredContacts = contacts;
      } else {
        filteredContacts = contacts
            .where((contact) =>
                contact["name"].toLowerCase().contains(query.toLowerCase()))
            .toList();
      }
    });
  }

  void _updateJoinState(int index, bool joined) {
    setState(() {
      contacts[index]["joined"] = joined;
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
                      "Join a network",
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
                        hintText: "Search by name, location",
                        hintStyle:
                            TextStyle(fontSize: 14, color: Colors.grey[400]),
                        prefixIcon: const Icon(Icons.search),
                        prefixIconColor: Colors.grey[400],
                        enabledBorder: InputBorder.none,
                        border: InputBorder.none,
                      ),
                    ),
                  ),
                  const SizedBox(width: 15),
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
              const SizedBox(height: 20),
              Expanded(
                child: ListView.builder(
                  itemCount: filteredContacts.length,
                  itemBuilder: (context, index) {
                    final contact = filteredContacts[index];
                    return NetworkTile(
                      name: contact["name"],
                      imagePath: contact["imagePath"],
                      description: contact["description"],
                      initialJoined: contact["joined"],
                      onToggle: (joined) =>
                          _updateJoinState(index, joined), // Update callback
                    );
                  },
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
