import 'dart:io';

import 'package:doctor_app/Network/add_a_new_update.dart';
import 'package:doctor_app/components/my_blue_button.dart';
import 'package:doctor_app/components/patients_textfield.dart';
import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class EditNetwork extends StatefulWidget {
  final String name;
  final String description;
  final File? image;

  const EditNetwork({
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
            padding: const EdgeInsets.all(25),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(height: 25),
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
                      "Edit network",
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
                  child: Container(
                    decoration: BoxDecoration(color: Colors.grey.shade100),
                    width: 335,
                    height: 230,
                    child: Center(
                      child: _selectedImage != null
                          ? ClipRRect(
                              borderRadius: BorderRadius.circular(8),
                              child: Image.file(
                                _selectedImage!,
                                width: 150,
                                height: 150,
                                fit: BoxFit.cover,
                              ),
                            )
                          : const Icon(
                              Icons.image,
                              color: Colors.grey,
                              size: 50,
                            ),
                    ),
                  ),
                ),
                const SizedBox(height: 20),
                Center(
                  child: Container(
                    width: 174,
                    height: 48,
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
                const SizedBox(height: 30),
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
