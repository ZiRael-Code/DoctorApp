import '../MainSelectionScreen/Dashboard.dart';
import 'package:doctor_app/MainSelectionScreen/Dashboard.dart';
import 'package:doctor_app/components/network_tile.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
// import 'network_tile.dart'; // Import the NetworkTile component

class JoinANetwork extends StatefulWidget {
  JoinANetwork({super.key});

  @override
  State<JoinANetwork> createState() => _JoinANetworkState();
}

class _JoinANetworkState extends State<JoinANetwork> {
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
                      "Join a network",
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
                    width: getFontSize(245, context),
                    decoration: BoxDecoration(
                      color: Colors.grey[200],
                      borderRadius: BorderRadius.circular(50),
                    ),
                    child: TextField(
                      onChanged: _filterContacts,
                      decoration: InputDecoration(
                        hintText: "Search by name, location",
                        hintStyle:
                            TextStyle(fontSize: getFontSize(14, context), color: Colors.grey[400]),
                        prefixIcon: Icon(Icons.search),
                        prefixIconColor: Colors.grey[400],
                        enabledBorder: InputBorder.none,
                        border: InputBorder.none,
                      ),
                    ),
                  ),
                  SizedBox(width: getFontSize(10, context)),
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
              SizedBox(height: getFontSize(20, context)),
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