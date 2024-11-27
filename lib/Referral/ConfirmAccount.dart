import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';


void main(){
  runApp(const AddedAccountSucess());
}

class AddedAccountSucess extends StatefulWidget {
  const AddedAccountSucess({super.key});
  @override
  _AddedAccountSucessScreen createState() => _AddedAccountSucessScreen();
}

class _AddedAccountSucessScreen extends  State<AddedAccountSucess> {
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
                    textHeader: 'Account Number',
                    textHint: "0123456789"
                  ),

                  const SizedBox(height: 25.0),
                  textField(
                    textHeader: 'Bank name',
                    textHint: "GTBank"
                  ),
                  const SizedBox(height: 25.0),

                  textField(textHeader: "Name",
                      textHint: "SANNI MUIZ DOLAPO"),

                  const SizedBox(height: 25.0),

                  const Spacer(),
                  Align(
                    child:
                    Container(
                      width: double.infinity,
                      height: 54,
                      decoration: BoxDecoration(
                        color: const Color(0xFF3C8AFF),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: TextButton(
                        onPressed: () {
                        },
                        child: const Text(
                          'Confirm',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 16,
                          ),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(height: 15.0),
                ],
              ),
            ),
           ));
  }

  textField({
    required String textHeader,
    required String textHint
  }) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Align(alignment: Alignment.centerLeft,child:
        Text(
        textHeader,
        style: const TextStyle(
          color: Colors.black,
          fontSize: 16.0,
        ),
        textAlign: TextAlign.start,
      ),
      ),
        const SizedBox(height: 15.0),
        Container(
          width: double.infinity,
          decoration: BoxDecoration(
            color: Colors.grey[300],
            borderRadius: BorderRadius.circular(8.0),
          ),
          padding: const EdgeInsets.symmetric(
            vertical: 15.0,
            horizontal: 10.0,
          ),
          child: Text(
            textHint,
            style: const TextStyle(
              color: Colors.black,
              fontSize: 16.0,
            ),
          ),
        ),
    ],);
  }
}