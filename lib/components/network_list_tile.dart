import 'package:flutter/material.dart';

class NetworkListTile extends StatefulWidget {
  final bool isChecked; // Add the isChecked property

  NetworkListTile({
    super.key,
    this.isChecked = false, // Default value set to false
  });

  @override
  State<NetworkListTile> createState() => _NetworkListTileState();
}

class _NetworkListTileState extends State<NetworkListTile> {
  late bool isChecked;

  @override
  void initState() {
    super.initState();
    isChecked = widget.isChecked; // Initialize isChecked with the passed value
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 15),
      child: Container(
        child: Column(
          children: [
            SizedBox(
              height: 5,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                CircleAvatar(
                  backgroundImage: AssetImage("assets/images/guild.png"),
                  radius: 25,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: 20,
                    ),
                    Text(
                      "Guild of Nigerian Doctors",
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(
                      height: 14,
                    ),
                  ],
                ),
                SizedBox(
                  width: 40,
                ),
                GestureDetector(
                  onTap: () {
                    setState(() {
                      isChecked = !isChecked;
                    });
                  },
                  child: Container(
                    height: 24,
                    width: 24,
                    decoration: BoxDecoration(
                      color: isChecked ? Colors.green : Colors.grey,
                      shape: BoxShape.circle,
                    ),
                    child: isChecked
                        ? Icon(
                            Icons.check,
                            color: Colors.white,
                            size: 16,
                          )
                        : null,
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 5,
            ),
            SizedBox(
              width: 350,
              child: Divider(
                color: Colors.grey[300],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
