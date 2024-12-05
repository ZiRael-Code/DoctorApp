import 'package:flutter/material.dart';

class ContactsTile extends StatelessWidget {
  final String name;
  final String phonenumber;
  final VoidCallback onAddPatient; // Callback function

  ContactsTile({
    super.key,
    required this.name,
    required this.phonenumber,
    required this.onAddPatient, // Pass the callback
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          SizedBox(height: 5),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                width: 50,
                height: 50,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.black,
                ),
                child: Center(
                  child: Text(
                    name[0],
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: 20),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      name,
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  SizedBox(height: 2),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      phonenumber,
                      style: TextStyle(
                        color: Colors.grey[400],
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(width: 10),
              Container(
                width: 79,
                height: 27,
                decoration: BoxDecoration(
                  color: Colors.blue,
                  borderRadius: BorderRadius.circular(8),
                ),
                child: TextButton(
                  onPressed: onAddPatient, // Trigger the callback
                  child: Text(
                    "Add Patient",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 10,
                    ),
                  ),
                ),
              ),
            ],
          ),
          SizedBox(height: 5),
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
