import '../MainSelectionScreen/Dashboard.dart';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

<<<<<<< HEAD:lib/Referral/ConfirmAccount.dart
void main() {
  runApp(const AddedAccountSucess());
=======
import 'AddedAccountSucess.dart';


void main(){
  runApp(ConfirmName());
>>>>>>> 94d90a26bb1335db614dc24158284efe375dd294:lib/Account/ConfirmName.dart
}

class ConfirmName extends StatefulWidget {
  ConfirmName({super.key});
  @override
  _ConfirmNameScreen createState() => _ConfirmNameScreen();
}

<<<<<<< HEAD:lib/Referral/ConfirmAccount.dart
class _AddedAccountSucessScreen extends State<AddedAccountSucess> {
=======
class _ConfirmNameScreen extends  State<ConfirmName> {
>>>>>>> 94d90a26bb1335db614dc24158284efe375dd294:lib/Account/ConfirmName.dart
  String? _selectedValue;

  @override
  Widget build(BuildContext context) {
<<<<<<< HEAD:lib/Referral/ConfirmAccount.dart
    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(
        title: Row(
          children: [
            Container(
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
            Spacer(),
            Container(
              alignment: Alignment.center,
              child: Text(
                'Add Account',
                style: TextStyle(
                    fontSize: 20,
                    fontStyle: FontStyle.normal,
                    fontWeight: FontWeight.bold),
              ),
            ),
            Spacer(),
          ],
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 20.0),
            textField(textHeader: 'Account Number', textHint: "0123456789"),
            SizedBox(height: 25.0),
            textField(textHeader: 'Bank name', textHint: "GTBank"),
            SizedBox(height: 25.0),
            textField(textHeader: "Name", textHint: "SANNI MUIZ DOLAPO"),
            SizedBox(height: 25.0),
            Spacer(),
            Align(
              child: Container(
                width: double.infinity,
                height: 54,
                decoration: BoxDecoration(
                  color: Color(0xFF3C8AFF),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: TextButton(
                  onPressed: () {},
                  child: Text(
                    'Confirm',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(height: 15.0),
          ],
        ),
      ),
    ));
=======
    return Scaffold(
            appBar: AppBar(
          automaticallyImplyLeading: false,
              title: Row(
                children: [
                  InkWell(
          onTap: () => Navigator.pop(context),
          child: 
              Container(
                width: getFontSize(35, context),
                height: getFontSize(35, context),
                padding: EdgeInsets.all(10),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(50),
                  color: Color(0xFFE5E5E5),
                ),
                child: SvgPicture.asset('assets/images/back.svg',
                  width: getFontSize(8.0, context),
                  height: getFontSize(15, context),),
              ),
              ),

                  Spacer(),
                  Container(
                    alignment: Alignment.center,
                    child:
                    Text(
                      'Add Account',
                      style: TextStyle(
                          fontSize: getFontSize(20, context),
                          fontStyle: FontStyle.normal,
                        fontWeight: FontWeight.bold
                      ),
                    ),
                  ),
                  Spacer(),

                ],
              ),
            ),
            body:  Padding(
              padding: EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: getFontSize(20.0, context)),
                  textField(
                    textHeader: 'Account Number',
                    textHint: "0123456789"
                  ),

                  SizedBox(height: getFontSize(25.0, context)),
                  textField(
                    textHeader: 'Bank name',
                    textHint: "GTBank"
                  ),
                  SizedBox(height: getFontSize(25.0, context)),

                  textField(textHeader: "Name",
                      textHint: "SANNI MUIZ DOLAPO"),

                  SizedBox(height: getFontSize(25.0, context)),

                  Spacer(),
                  Align(
                    child:
                    Container(
                      width: double.infinity,
                      height: getFontSize(54, context),
                      decoration: BoxDecoration(
                        color: Color(0xFF3C8AFF),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: TextButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => AddedAccountSucess(),
                            ),
                          );
                        },
                        child: Text(
                          'Confirm',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: getFontSize(16, context),
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: getFontSize(15.0, context)),
                ],
              ),
            ),
           );
>>>>>>> 94d90a26bb1335db614dc24158284efe375dd294:lib/Account/ConfirmName.dart
  }

  textField({required String textHeader, required String textHint}) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
<<<<<<< HEAD:lib/Referral/ConfirmAccount.dart
        Align(
          alignment: Alignment.centerLeft,
          child: Text(
            textHeader,
            style: TextStyle(
              color: Colors.black,
              fontSize: 16.0,
            ),
            textAlign: TextAlign.start,
          ),
        ),
        SizedBox(height: 15.0),
=======
        Align(alignment: Alignment.centerLeft,child:
        Text(
        textHeader,
        style: TextStyle(
          color: Colors.black,
          fontSize: getFontSize(16.0, context),
        ),
        textAlign: TextAlign.start,
      ),
      ),
        SizedBox(height: getFontSize(15.0, context)),
>>>>>>> 94d90a26bb1335db614dc24158284efe375dd294:lib/Account/ConfirmName.dart
        Container(
          width: double.infinity,
          decoration: BoxDecoration(
            color: Colors.grey[300],
            borderRadius: BorderRadius.circular(8.0),
          ),
          padding: EdgeInsets.symmetric(
            vertical: 15.0,
            horizontal: 10.0,
          ),
          child: Text(
            textHint,
            style: TextStyle(
              color: Colors.black,
              fontSize: getFontSize(16.0, context),
            ),
          ),
        ),
      ],
    );
  }
}
