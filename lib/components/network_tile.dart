import '../MainSelectionScreen/Dashboard.dart';
import 'package:flutter/material.dart';

class NetworkTile extends StatefulWidget {
  final String name;
  final String imagePath;
  final String description;
  final bool initialJoined; // Initial state for the joined button
  final Function(bool joined)? onToggle; // Callback for state change

  NetworkTile({
    super.key,
    required this.name,
    required this.imagePath,
    required this.description,
    this.initialJoined = false,
    this.onToggle,
  });

  @override
  State<NetworkTile> createState() => _NetworkTileState();
}

class _NetworkTileState extends State<NetworkTile> {
  late bool _isJoined;

  @override
  void initState() {
    super.initState();
    _isJoined = widget.initialJoined;
  }

  void _toggleJoinStatus() {
    setState(() {
      _isJoined = !_isJoined;
    });
    if (widget.onToggle != null) {
      widget.onToggle!(_isJoined);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: getFontSize(8.0, context)),
      child: Container(
        padding: EdgeInsets.all(8),
        // width: getFontSize(335, context),
        // height: getFontSize(87, context),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(14),
          border: Border.all(color: Colors.grey.shade300),
        ),
        child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SizedBox(
                width: getFontSize(44, context),
                  height: getFontSize(44, context),
                  child:
              CircleAvatar(
                radius: 50,
                backgroundImage: AssetImage(widget.imagePath),
              )
              ),
              SizedBox(width: getFontSize(10, context),),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    widget.name,
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: getFontSize(13, context),
                    ),
                  ),
                  SizedBox(height: getFontSize(15, context),),
                  Text(
                    widget.description,
                    style: TextStyle(
                      fontSize: getFontSize(9, context),
                      color: Colors.grey,
                    ),
                  ),
                ],
              ),
              Spacer(),
              Align(
                child:
              GestureDetector(
                onTap: _toggleJoinStatus,
                child: Padding(
                  padding: EdgeInsets.only(left: getFontSize(24, context)),
                  child: Container(
                    // width: getFontSize(55, context),
                    // height: getFontSize(30, context),
                    padding:
                        EdgeInsets.symmetric(horizontal: getFontSize(15, context), vertical: getFontSize(8, context)),
                    decoration: BoxDecoration(
                      color: _isJoined ? Colors.blue[100] : Colors.blue,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Text(
                      _isJoined ? "Joined" : "Join",
                      style: TextStyle(
                        color: _isJoined ? Colors.blue : Colors.white,
                        fontSize: getFontSize(10, context),
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              ),
                alignment: Alignment.center,
              ),
            ],
        ),
      ),
    );
  }
}