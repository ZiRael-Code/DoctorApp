import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Network extends StatefulWidget {
  const Network({super.key});

  @override
  State<Network> createState() => _NetworkState();
}

class _NetworkState extends State<Network> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Text("Patients", style: TextStyle(fontSize: 26, fontWeight: FontWeight.w400),),
      ),
    );
  }
}
