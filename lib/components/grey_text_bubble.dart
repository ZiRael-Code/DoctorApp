import '../MainSelectionScreen/Dashboard.dart';
import 'package:flutter/material.dart';

class GreyTextBubble extends StatelessWidget {
  final String text;

  GreyTextBubble({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: getFontSize(5, context), horizontal: getFontSize(10, context)),
      padding: EdgeInsets.symmetric(vertical: getFontSize(12, context), horizontal: getFontSize(15, context)),
      decoration: BoxDecoration(
        color: Colors.grey.shade200, // Light grey background
        borderRadius: BorderRadius.only(
          topRight: Radius.circular(20), // Rounded top-right corner
          bottomLeft: Radius.circular(20), // Rounded bottom-left corner
          bottomRight: Radius.circular(20), // Rounded bottom-right corner
        ),
      ),
      constraints: BoxConstraints(
        maxWidth: MediaQuery.of(context).size.width *
            0.7, // Max width is 70% of screen width
      ),
      child: Text(
        text,
        style: TextStyle(
          fontSize: getFontSize(14, context),
          color: Colors.black87, // Darker text for better readability
        ),
      ),
    );
  }
}