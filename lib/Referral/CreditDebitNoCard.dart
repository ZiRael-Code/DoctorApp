import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

void main() {
  runApp(const CreditDebitNoCard());
}

class CreditDebitNoCard extends StatefulWidget {
  const CreditDebitNoCard({super.key});

  @override
  _AddedAccountSucessScreen createState() => _AddedAccountSucessScreen();
}

class _AddedAccountSucessScreen extends State<CreditDebitNoCard> {
  String? _selectedValue;
  bool isSelected = false;



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
                    child: const Text(
                      'Withdraw funds',
                      style: TextStyle(
                          fontSize: 20,
                          fontStyle: FontStyle.normal,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                  const Spacer(),
                ],
              ),
            ),
            body: Container(
                padding: const EdgeInsets.only(bottom: 30, left: 15, right: 15),
                child: Align(
                  child: Column(
                    children: [
                      const SizedBox(height: 130),

                      SvgPicture.asset("assets/images/wallecuatet.svg"),
                      const SizedBox(height: 140),
                      const Text(
                        'You have no cards yet.',
                        style: TextStyle(
                          fontSize: 18.0,
                          color: Colors.black,
                        ),
                      ),
                      const SizedBox(height: 20),
                      Container(
                        width: MediaQuery.of(context).size.width * 0.70,
                        height: 54,
                        decoration: BoxDecoration(
                          color: const Color(0xFF3C8AFF),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: TextButton(
                          onPressed: () {
                          },
                          child: const Text(
                            'Add new card',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 18,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ))));
  }

}

