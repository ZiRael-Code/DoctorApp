import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';


void main(){
  runApp(const AddedAccount());
}

class AddedAccount extends StatefulWidget {
  const AddedAccount({super.key});
  @override
  _AddedAccountSucessScreen createState() => _AddedAccountSucessScreen();
}

class _AddedAccountSucessScreen extends  State<AddedAccount> {
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
                    child: SvgPicture.asset('assets/images/back.svg',
                      width: 8.0,
                      height: 15,),
                  ),
                  const Spacer(),
                  Container(
                    alignment: Alignment.center,
                    child:
                    const Text(
                      'Add Account',
                      style: TextStyle(
                          fontSize: 20,
                          fontStyle: FontStyle.normal,
                        fontWeight: FontWeight.bold
                      ),
                    ),
                  ),
                  const Spacer(),

                ],
              ),
            ),
            body:  Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(height: 20.0),
                  textField(
                    textType: TextInputType.number,
                    textHeader: 'Account Number',
                    textHint: "Enter account number"
                  ),

                  const SizedBox(height: 25.0),
                  textField(
                    textType: TextInputType.number,
                    textHeader: 'Bank name',
                    textHint: "Bank"
                  ),
              const SizedBox(height: 25,),
                  Align(
                    child:
                      Container(
                    width: 178,
                    height: 54,
                    decoration: BoxDecoration(
                      color: const Color(0xFFE2EDFF),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: TextButton(
                      onPressed: () {
                      },
                      child: const Text(
                        'Confirm name',
                        style: TextStyle(
                          color: Color(0xFF3C8AFF),
                          fontSize: 16,
                        ),
                      ),
                    ),
                  ),
                  ),

                ],
              ),
            ),
           ));
  }

  textField({
    required TextInputType textType,
    required String textHeader,
    required String textHint
  }) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
    Align(
      alignment: Alignment.centerLeft,
      child:
    Text(

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
    ],);
  }
}