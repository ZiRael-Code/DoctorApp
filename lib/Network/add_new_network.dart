import 'dart:io';

import 'package:doctor_app/components/my_blue_button.dart';
import 'package:doctor_app/components/patients_textfield.dart';
import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

import 'edit_network.dart';

class AddNewNetwork extends StatefulWidget {
  const AddNewNetwork({super.key});

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
            padding: const EdgeInsets.all(25),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(height: 40),
                Row(
                  children: [
                    GestureDetector(
                      onTap: () => Navigator.pop(context),
                      child: Container(
                        height: 45,
                        width: 45,
                        decoration: BoxDecoration(
                          color: Colors.grey.shade300,
                          shape: BoxShape.circle,
                        ),
                        child: const Icon(Icons.arrow_back),
                      ),
                    ),
                    const SizedBox(width: 60),
                    const Text(
                      "Create a new network",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 40),
                const Text(
                  "Name",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 10),
                Container(
                  height: 48,
                  width: 335,
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
                const SizedBox(height: 20),
                const Text(
                  "Description",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 10),
                Container(
                  height: 82,
                  width: 335,
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
                const SizedBox(height: 30),
                const Text(
                  "Display picture",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 10),
                DottedBorder(
                  color: Colors.grey.withOpacity(0.70),
                  radius: const Radius.circular(19),
                  dashPattern: const [8, 6],
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
                            const SizedBox(
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
                            const SizedBox(
                              height: 30,
                            ),
                            const Text(
                              "Accepted formats: .jpg, .png",
                              style: TextStyle(color: Colors.grey),
                            ),
                            const SizedBox(
                              height: 20,
                            ),
                            Container(
                              height: 55,
                              padding: const EdgeInsets.only(
                                  left: 50, right: 50, top: 10, bottom: 10),
                              decoration: BoxDecoration(
                                  color: Colors.blue.shade100,
                                  borderRadius: BorderRadius.circular(12)),
                              child: TextButton(
                                onPressed: _pickImage,
                                child: const Text(
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
                const SizedBox(height: 80),
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
