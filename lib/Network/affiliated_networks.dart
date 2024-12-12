import 'package:doctor_app/components/network_tile.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
// import 'network_tile.dart'; // Import the NetworkTile component

class AffiliatedNetworks extends StatefulWidget {
  AffiliatedNetworks({super.key});

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
                      "Join a network",
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
                        hintText: "Search by name, location",
                        hintStyle:
                            TextStyle(fontSize: 14, color: Colors.grey[400]),
                        prefixIcon: Icon(Icons.search),
                        prefixIconColor: Colors.grey[400],
                        enabledBorder: InputBorder.none,
                        border: InputBorder.none,
                      ),
                    ),
                  ),
                  SizedBox(width: 15),
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
              SizedBox(height: 20),
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
