import '../MainSelectionScreen/Dashboard.dart';
import 'package:flutter/material.dart';

class PatientsTextfield extends StatelessWidget {
  final double width;
  final double height;
  final String hinttext;
  PatientsTextfield(
      {super.key,
      required this.height,
      required this.width,
      required this.hinttext});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      width: width,
      decoration: BoxDecoration(
          color: Colors.grey[200], borderRadius: BorderRadius.circular(12)),
      child: TextField(
        decoration: InputDecoration(
            hintText: hinttext,
            hintStyle: TextStyle(
                color: Colors.grey[400], fontWeight: FontWeight.normal),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(15.0),
              borderSide: BorderSide.none,
            )),
      ),
    );
  }
}