import 'package:doctor_app/AddPatients/chat_page.dart';
import 'package:doctor_app/components/messages_tile.dart';
import 'package:flutter/material.dart';

class Messages extends StatefulWidget {
  const Messages({super.key});

  @override
  State<Messages> createState() => _MessagesState();
}

class _MessagesState extends State<Messages> {
  List<Map<String, dynamic>> contacts = [
    {
      "name": "Janet Okoli",
      "imagePath": "assets/images/janet.jpg",
      "unreadCount": 1,
      "status": "online",
    },
    {
      "name": "Adejayo Johnson",
      "imagePath": "assets/images/adejayo.jpg",
      "unreadCount": 0,
      "status": "offline",
    },
    {
      "name": "Dr. Nelson Yang",
      "imagePath": "assets/images/yang.jpg",
      "unreadCount": 2,
      "status": "online",
    },
    {
      "name": "Adejayo Johnson",
      "imagePath": "assets/images/adejayo.jpg",
      "unreadCount": 0,
      "status": "offline",
    },
    {
      "name": "Dr. Nelson Yang",
      "imagePath": "assets/images/yang.jpg",
      "unreadCount": 2,
      "status": "online",
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
                  const Text(
                    "Messages",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 35),
              Container(
                height: 50,
                padding: const EdgeInsets.all(4),
                width: 324,
                decoration: BoxDecoration(
                  color: Colors.grey[200],
                  borderRadius: BorderRadius.circular(50),
                ),
                child: TextField(
                  onChanged: _filterContacts,
                  decoration: InputDecoration(
                    hintText: "Search",
                    hintStyle: TextStyle(fontSize: 14, color: Colors.grey[400]),
                    prefixIcon: const Icon(Icons.search),
                    prefixIconColor: Colors.grey[400],
                    enabledBorder: InputBorder.none,
                    border: InputBorder.none,
                  ),
                ),
              ),
              const SizedBox(height: 20),
              Expanded(
                child: ListView.builder(
                  itemCount: filteredContacts.length,
                  itemBuilder: (context, index) {
                    final contact = filteredContacts[index];
                    return MessagesTile(
                      name: contact["name"],
                      imagePath: contact["imagePath"],
                      unreadCount: contact["unreadCount"],
                      status: contact["status"],
                      onTap: () => Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const ChatPage(),
                        ),
                      ),
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
