import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

void main() {
  runApp(const AddCondition());
}

class AddCondition extends StatefulWidget {
  const AddCondition({super.key});
  @override
  _AddConditionScreen createState() => _AddConditionScreen();
}

class _AddConditionScreen extends State<AddCondition> {
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
                    padding: const EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(50),
                      color: const Color(0xFFE5E5E5),
                    ),
                    child: SvgPicture.asset(
                      'assets/images/back.svg',
                      width: 8.0,
                      height: 15,
                    ),
                  ),
                  const Spacer(),
                  Container(
                    alignment: Alignment.center,
                    child: const Center(
                      child: Text(
                        'Add a  Condition',
                        style: TextStyle(
                            fontSize: 20, fontStyle: FontStyle.normal),
                      ),
                    ),
                  ),
                  const Spacer(),
                ],
              ),
              centerTitle: true,
            ),
            body: Container(
                padding: const EdgeInsets.only(bottom: 30, left: 15, right: 15),
                child: Align(
                  child: Column(
                    children: [
                      const SizedBox(
                        height: 30,
                      ),
                      textField(
                          textType: TextInputType.text,
                          textHeader: "Name of condition",
                          textHint: "Input Name"),
                      textField(
                          textType: TextInputType.text,
                          textHeader: "How long have you had this",
                          textHint: "Duration"),
                      textField(
                          textType: TextInputType.text,
                          textHeader: "Current medication (if any)",
                          textHint: "Medication"),
                      const Spacer(),
                      ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.blue,
                          fixedSize:
                              Size.fromWidth(MediaQuery.of(context).size.width),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(9),
                          ),
                        ),
                        child: const Padding(
                          padding: EdgeInsets.symmetric(
                              vertical: 12.0, horizontal: 24.0),
                          child: Text(
                            'Save',
                            style: TextStyle(color: Colors.white, fontSize: 18),
                          ),
                        ),
                      ),
                    ],
                  ),
                ))));
  }

  textField(
      {required TextInputType textType,
      required String textHeader,
      required String textHint}) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Align(
          alignment: Alignment.centerLeft,
          child: Text(
            textHeader,
            style: const TextStyle(
              fontSize: 16.0,
            ),
          ),
        ),

        const SizedBox(height: 15.0),

        // Account Number TextField
        TextField(
          decoration: InputDecoration(
            hintText: textHint,
            hintStyle: const TextStyle(
              color: Colors.grey,
            ),
            filled: true,
            fillColor: Colors.grey[300],
            contentPadding: const EdgeInsets.symmetric(
              vertical: 15.0, // Height of 50 (including padding)
              horizontal: 10.0,
            ),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(8.0),
              borderSide: BorderSide.none,
            ),
          ),
          keyboardType: textType,
          style: const TextStyle(
            fontSize: 16.0,
          ),
        ),
        const SizedBox(
          height: 22,
        )
      ],
    );
  }
}
