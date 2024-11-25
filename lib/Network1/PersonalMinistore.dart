import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Ministore extends StatefulWidget {
  const Ministore({super.key});

  @override
  State<Ministore> createState() => _MinistoreState();
}

class _MinistoreState extends State<Ministore> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          children: [
            Container(
              decoration: BoxDecoration(

              ),
            )
          ],
        ),
      ),
      body: Padding(
        padding: EdgeInsets.all(16),


      ),
    );


  }
}
