import 'dart:io';

import 'package:doctor_app/components/my_blue_button.dart';
import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:image_picker/image_picker.dart';

class AddANewUpdate extends StatefulWidget {
  AddANewUpdate({super.key});

  @override
  State<AddANewUpdate> createState() => _AddANewUpdateState();
}

class _AddANewUpdateState extends State<AddANewUpdate> {
  late TextEditingController postController;

  final ImagePicker _picker = ImagePicker();
  File? _selectedImage;

  Future<void> _pickImage() async {
    final pickedFile = await _picker.pickImage(source: ImageSource.gallery);
    if (pickedFile != null) {
      setState(() {
        _selectedImage = File(pickedFile.path);
      });
    }
  }

  @override
  void initState() {
    super.initState();
    // Initialize the controller
    postController = TextEditingController();
  }

  @override
  void dispose() {
    // Dispose of the controller to avoid memory leaks
    postController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: EdgeInsets.symmetric(horizontal: 25),
          child: Column(
            children: [
              SizedBox(
                height: 30,
              ),
              Row(
                children: [
                  GestureDetector(
                    onTap: () => Navigator.pop(context),
                    child: Container(
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
                  ),
                  SizedBox(width: 60),
                  Text(
                    "Add a new update",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                    ),
                  ),
                ],
              ),
              SizedBox(height: 60),
              Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  "Name",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
              ),
              SizedBox(height: 10),
              Align(
                alignment: Alignment.centerLeft,
                child: Container(
                  height: 121,
                  width: 335,
                  decoration: BoxDecoration(
                    color: Colors.grey[200],
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: TextField(
                    controller: postController,
                    decoration: InputDecoration(
                      hintText: "Type something..",
                      hintStyle: TextStyle(
                        color: Colors.grey[400],
                        fontWeight: FontWeight.normal,
                      ),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15.0),
                        borderSide: BorderSide.none,
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 30,
              ),
              Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  "Add a picture",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Align(
                alignment: Alignment.centerLeft,
                child: DottedBorder(
                  color: Colors.grey.withOpacity(0.70),
                  radius: Radius.circular(19),
                  dashPattern: [8, 6],
                  borderType: BorderType.RRect,
                  strokeWidth: 2,
                  child: Column(
                    children: [
                      Container(
                        decoration: BoxDecoration(color: Colors.grey.shade100),
                        width: 335,
                        height: 230,
                        child: Column(
                          children: [
                            SizedBox(
                              height: 50,
                            ),
                            _selectedImage != null
                                ? Image.file(
                                    _selectedImage!,
                                    width: 150,
                                    height: 150,
                                    fit: BoxFit.cover,
                                  )
                                : Image.asset("assets/images/filelogo.png"),
                            SizedBox(
                              height: 30,
                            ),
                            Text(
                              "Accepted formats: .jpg, .png",
                              style: TextStyle(color: Colors.grey),
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            Container(
                              height: 55,
                              padding: EdgeInsets.only(
                                  left: 50, right: 50, top: 10, bottom: 10),
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
              ),
              Spacer(),
              MyBlueButton(text: "Upload"),
              SizedBox(
                height: 30,
              )
            ],
          ),
        ),
      ),
    );
  }
}
