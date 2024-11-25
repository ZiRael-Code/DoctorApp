import 'package:doctor_app/AddPatients/add_a_patient.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Patients extends StatefulWidget {
  const Patients({super.key});

  @override
  State<Patients> createState() => _PatientsState();
}

class _PatientsState extends State<Patients> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:  Text("Patients", style: TextStyle(fontSize: 26, fontWeight: FontWeight.w500),),
        actions: [
          IconButton(
            icon: Icon(Icons.stars_rounded, size: 36,),
            onPressed: () {
              // Search logic here
            },
          ),
        ],
      ),
      body: Padding(padding: EdgeInsets.all(12),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              actions(
                icon: Icons.add,
                text: "Add new patient",
                action: MaterialPageRoute(builder: (builder)=>AddAPatient())
              ),
              actions(
                icon: Icons.message,
                text: "Message patients",
                action: MaterialPageRoute(builder: (builder)=>AddAPatient())
              ),
              actions(
                icon: Icons.edit_note,
                text: "Patient’s readings",
                action: MaterialPageRoute(builder: (builder)=>AddAPatient())
              ),
              actions(
                icon: Icons.search,
                text: "Search for patients",
                action: MaterialPageRoute(builder: (builder)=>AddAPatient())
              ),

            ],
          )
        ],
      ),
      ),
    );
  }

  actions({
    required IconData icon,
    required String text,
    required MaterialPageRoute action
  }) {
    return GestureDetector(
      onTap: () {
        Navigator.of(context).push(action);
      },
        child: Column(
      children: [
        Container(
          padding: EdgeInsets.all(12),
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: Color(0xffE2EDFF)
          ),
          child: Icon(icon, size: 36, color: Colors.blue,),
        ),
        SizedBox(height: 12,),
        Container(
          width: 62,
          child:  Text(text, textAlign: TextAlign.center, style: TextStyle(fontSize: 14,  fontWeight: FontWeight.w400),),
        )
      ],
    )
    );
  }
}
