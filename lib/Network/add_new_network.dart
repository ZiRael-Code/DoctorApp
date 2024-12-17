import '../MainSelectionScreen/Dashboard.dart';
import 'dart:io';

import 'package:doctor_app/components/my_blue_button.dart';
import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:image_picker/image_picker.dart';

import 'edit_network.dart';

class AddNewNetwork extends StatefulWidget {
  AddNewNetwork({super.key});

  @override
  State<AddNewNetwork> createState() => _AddNewNetworkState();
}

class _AddNewNetworkState extends State<AddNewNetwork> {
  final ImagePicker _picker = ImagePicker();
  File? _selectedImage;

  // Controllers to manage text inputs
  final TextEditingController nameController = TextEditingController();
  final TextEditingController descriptionController = TextEditingController();

  Future<void> _pickImage() async {
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
                SizedBox(height: getFontSize(40, context)),
                Row(
                  children: [
                    GestureDetector(
                      onTap: () => Navigator.pop(context),
                      child: Container(
                        width: getFontSize(35, context),
                        height: getFontSize(35, context),
                        padding: EdgeInsets.all(10),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(50),
                          color: Color(0xFFE5E5E5),
                        ),
                        child: SvgPicture.asset(
                          'assets/images/back.svg',
                          width: getFontSize(8.0, context),
                          height: getFontSize(15, context),
                        ),
                      ),
                    ),
                    SizedBox(width: getFontSize(60, context)),
                    Text(
                      "Create a new network",
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
                  child: Column(
                    children: [
                      Container(
                        decoration: BoxDecoration(color: Colors.grey.shade100),
                        width: getFontSize(335, context),
                        height: getFontSize(230, context),
                        child: Column(
                          children: [
                            SizedBox(
                              height: getFontSize(50, context),
                            ),
                            _selectedImage != null
                                ? Image.file(
                                    _selectedImage!,
                                    width: getFontSize(150, context),
                                    height: getFontSize(150, context),
                                    fit: BoxFit.cover,
                                  )
                                : Image.asset("assets/images/filelogo.png"),
                            SizedBox(
                              height: getFontSize(30, context),
                            ),
                            Text(
                              "Accepted formats: .jpg, .png",
                              style: TextStyle(color: Colors.grey),
                            ),
                            SizedBox(
                              height: getFontSize(20, context),
                            ),
                            Container(
                              height: getFontSize(55, context),
                              padding: EdgeInsets.only(
                                  left: getFontSize(50, context), right: getFontSize(50, context), top: getFontSize(10, context), bottom: getFontSize(10, context)),
                              decoration: BoxDecoration(
                                  color: Colors.blue.shade100,
                                  borderRadius: BorderRadius.circular(12)),
                              child: TextButton(
                                onPressed: _pickImage,
                                child: Text(
                                  "Upload ID",
                                  style: TextStyle(
                                    color: Colors.blue,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
                SizedBox(height: getFontSize(80, context)),
                Center(
                  child: GestureDetector(
                    onTap: () => Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => EditNetwork(
                          name: nameController.text,
                          description: descriptionController.text,
                          image: _selectedImage,
                        ),
                      ),
                    ),
                    child: MyBlueButton(
                      text: "Add",
                    ),
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