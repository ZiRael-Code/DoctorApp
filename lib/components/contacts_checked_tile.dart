import 'package:flutter/material.dart';

class ContactsCheckedTile extends StatefulWidget {
  final String name;
  final bool isInitiallySelected;
  final ValueChanged<bool> onSelectionChanged;

  ContactsCheckedTile({
    super.key,
    required this.name,
    this.isInitiallySelected = false,
    required this.onSelectionChanged,
  });

  @override
  State<ContactsCheckedTile> createState() => _ContactsCheckedTileState();
}

class _ContactsCheckedTileState extends State<ContactsCheckedTile> {
  late bool isChecked;

  @override
  void initState() {
    super.initState();
    isChecked = widget.isInitiallySelected; // Initialize state
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          SizedBox(
            height: 5,
          ),
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
                    widget.name[0],
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
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                    widget.name,
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
                  widget.onSelectionChanged(isChecked); // Notify parent
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
    );
  }
}
