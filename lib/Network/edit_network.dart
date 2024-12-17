import '../MainSelectionScreen/Dashboard.dart';
import 'dart:io';

import 'package:doctor_app/Network/add_a_new_update.dart';
import 'package:doctor_app/components/my_blue_button.dart';
import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class EditNetwork extends StatefulWidget {
  final String name;
  final String description;
  final File? image;

  EditNetwork({
    super.key,
    required this.name,
    required this.description,
    this.image,
  });

  @override
  State<EditNetwork> createState() => _EditNetworkState();
}

class _EditNetworkState extends State<EditNetwork> {
  final ImagePicker _picker = ImagePicker();
  File? _selectedImage;

  late TextEditingController nameController;
  late TextEditingController descriptionController;

  @override
  void initState() {
    super.initState();
    // Initialize controllers with passed data
    nameController = TextEditingController(text: widget.name);
    descriptionController = TextEditingController(text: widget.description);
    _selectedImage = widget.image;
  }

  Future<void> _changeImage() async {
    final pickedFile = await _picker.pickImage(source: ImageSource.gallery);
    if (pickedFile != null) {
      setState(() {
        _selectedImage = File(pickedFile.path);
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.all(25),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: getFontSize(25, context)),
                Row(
                  children: [
                    GestureDetector(
                      onTap: () => Navigator.pop(context),
                      child: Container(
                        height: getFontSize(45, context),
                        width: getFontSize(45, context),
                        decoration: BoxDecoration(
                          color: Colors.grey.shade300,
                          shape: BoxShape.circle,
                        ),
                        child: Icon(Icons.arrow_back),
                      ),
                    ),
                    SizedBox(width: getFontSize(60, context)),
                    Text(
                      "Edit network",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: getFontSize(20, context),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: getFontSize(40, context)),
                Text(
                  "Name",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                SizedBox(height: getFontSize(10, context)),
                Container(
                  height: getFontSize(48, context),
                  width: getFontSize(335, context),
                  decoration: BoxDecoration(
                      color: Colors.grey[200],
                      borderRadius: BorderRadius.circular(12)),
                  child: TextField(
                    controller: nameController,
                    decoration: InputDecoration(
                      hintText: "Type something..",
                      hintStyle: TextStyle(
                          color: Colors.grey[400],
                          fontWeight: FontWeight.normal),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15.0),
                        borderSide: BorderSide.none,
                      ),
                    ),
                  ),
                ),
                SizedBox(height: getFontSize(20, context)),
                Text(
                  "Description",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                SizedBox(height: getFontSize(10, context)),
                Container(
                  height: getFontSize(82, context),
                  width: getFontSize(335, context),
                  decoration: BoxDecoration(
                      color: Colors.grey[200],
                      borderRadius: BorderRadius.circular(12)),
                  child: TextField(
                    controller: descriptionController,
                    decoration: InputDecoration(
                      hintText: "Type something..",
                      hintStyle: TextStyle(
                          color: Colors.grey[400],
                          fontWeight: FontWeight.normal),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15.0),
                        borderSide: BorderSide.none,
                      ),
                    ),
                  ),
                ),
                SizedBox(height: getFontSize(30, context)),
                Text(
                  "Display picture",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                SizedBox(height: getFontSize(10, context)),
                DottedBorder(
                  color: Colors.grey.withOpacity(0.70),
                  radius: Radius.circular(19),
                  dashPattern: [8, 6],
                  borderType: BorderType.RRect,
                  strokeWidth: 2,
                  child: Container(
                    decoration: BoxDecoration(color: Colors.grey.shade100),
                    width: getFontSize(335, context),
                    height: getFontSize(230, context),
                    child: Center(
                      child: _selectedImage != null
                          ? ClipRRect(
                              borderRadius: BorderRadius.circular(8),
                              child: Image.file(
                                _selectedImage!,
                                width: getFontSize(150, context),
                                height: getFontSize(150, context),
                                fit: BoxFit.cover,
                              ),
                            )
                          : Icon(
                              Icons.image,
                              color: Colors.grey,
                              size: getFontSize(50, context),
                            ),
                    ),
                  ),
                ),
                SizedBox(height: getFontSize(20, context)),
                Center(
                  child: Container(
                    width: getFontSize(174, context),
                    height: getFontSize(48, context),
                    decoration: BoxDecoration(
                        color: Colors.blue[100],
                        borderRadius: BorderRadius.circular(14)),
                    child: Center(
                      child: TextButton(
                        onPressed: _changeImage,
                        child: Text("Change photo"),
                      ),
                    ),
                  ),
                ),
                SizedBox(height: getFontSize(30, context)),
                GestureDetector(
                  onTap: () => Navigator.push(context,
                      MaterialPageRoute(builder: (context) => AddANewUpdate())),
                  child: MyBlueButton(
                    text: "Save",
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}