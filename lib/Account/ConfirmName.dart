import '../MainSelectionScreen/Dashboard.dart';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../MainSelectionScreen/MainNavigator.dart';


void main(){
  runApp(ConfirmName());
}

class ConfirmName extends StatefulWidget {
  ConfirmName({super.key});
  @override
  _ConfirmNameScreen createState() => _ConfirmNameScreen();
}

class _ConfirmNameScreen extends  State<ConfirmName> {
  String? _selectedValue;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(
        title: Row(
          children: [
            Container(
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
            Spacer(),
            Container(
              alignment: Alignment.center,
              child: Text(
                'Add Account',
                style: TextStyle(
                    fontSize: 20,
                    fontStyle: FontStyle.normal,
                    fontWeight: FontWeight.bold),
              ),
            ),
            Spacer(),
          ],
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 20.0),
            textField(textHeader: 'Account Number', textHint: "0123456789"),
            SizedBox(height: 25.0),
            textField(textHeader: 'Bank name', textHint: "GTBank"),
            SizedBox(height: 25.0),
            textField(textHeader: "Name", textHint: "SANNI MUIZ DOLAPO"),
            SizedBox(height: 25.0),
            Spacer(),
            Align(
              child: Container(
                width: double.infinity,
                height: 54,
                decoration: BoxDecoration(
                  color: Color(0xFF3C8AFF),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: TextButton(
                  onPressed: () {
                    Navigator.of(context).pushAndRemoveUntil(
                      MaterialPageRoute(builder: (builder) => MainNavigator(index: 3,)), // Navigate to Login screen
                          (Route<dynamic> route) => false, // Remove all previous routes
                    );
                  },
                  child: Text(
                    'Confirm',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(height: 15.0),
          ],
        ),
      ),
    ));
  }

  textField({required String textHeader, required String textHint}) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Align(alignment: Alignment.centerLeft,child:
        Text(
        textHeader,
        style: TextStyle(
          color: Colors.black,
          fontSize: getFontSize(16.0, context),
        ),
        textAlign: TextAlign.start,
      ),
      ),
        SizedBox(height: getFontSize(15.0, context)),
        Container(
          width: double.infinity,
          decoration: BoxDecoration(
            color: Colors.grey[300],
            borderRadius: BorderRadius.circular(8.0),
          ),
          padding: EdgeInsets.symmetric(
            vertical: 15.0,
            horizontal: 10.0,
          ),
          child: Text(
            textHint,
            style: TextStyle(
              color: Colors.black,
              fontSize: getFontSize(16.0, context),
            ),
          ),
        ),
      ],
    );
  }
}

