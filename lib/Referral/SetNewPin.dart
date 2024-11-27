import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

void main() {
  runApp(const SetNewPin());
}

class SetNewPin extends StatefulWidget {
  const SetNewPin({super.key});
  @override
  _AppointmentPaymentScreen createState() => _AppointmentPaymentScreen();
}

class _AppointmentPaymentScreen extends State<SetNewPin> {
  String? _selectedValue;
  List<String> pin = [];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
            appBar: AppBar(),
            body: Container(
                padding: const EdgeInsets.only(bottom: 30, left: 15, right: 15),
                child: Align(
                  child: Column(
                    children: [
                      Align(
                        alignment: Alignment.topCenter,
                        child: SvgPicture.asset('assets/images/slider2.svg'),
                      ),
                      const SizedBox(height: 30),
                      const Text(
                        textAlign: TextAlign.center,
                        'Set new PIN',
                        style: TextStyle(
                            fontSize: 28, fontWeight: FontWeight.bold),
                      ),
                      const SizedBox(height: 20),
                      Container(
                        alignment: Alignment.center,
                        width: MediaQuery.of(context).size.width * 0.70,
                        child: const Align(
                          child: Text(
                            "Set a new PIN for making transactions on the application.",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontSize: 14,
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(height: 35),
                      Container(
                        width: 163,
                        height: 50,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(11),
                          color: Colors.black.withOpacity(0.05),
                          border: Border.all(color: const Color(0xFFE2E2E2)),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            dot(
                              color: pin.length == 1
                                  ? const Color(0xFF000000)
                                  : const Color(0xFFCCCCCC),
                            ),
                            dot(
                              color: pin.length == 2
                                  ? const Color(0xFF000000)
                                  : const Color(0xFFCCCCCC),
                            ),
                            dot(
                              color: pin.length == 3
                                  ? const Color(0xFF000000)
                                  : const Color(0xFFCCCCCC),
                            ),
                            dot(
                              color: pin.length == 4
                                  ? const Color(0xFF000000)
                                  : const Color(0xFFCCCCCC),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(
                        height: 30,
                      ),
                      // Container(
                      //   child: Row(
                      //     mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      //     children: [
                      //       Container(
                      //         decoration: BoxDecoration(
                      //           color: Colors.grey,
                      //           shape: BoxShape.circle
                      //         ),
                      //         width: 19,
                      //         height: 19,
                      //       ),
                      //       SizedBox(width: 10,),
                      //       Text(
                      //         'PIN does not match',
                      //         style: TextStyle(
                      //           fontSize: 14.0,
                      //           color: Colors.red,
                      //         ),
                      //       )
                      //     ]
                      //   )
                      // ),

                      const SizedBox(
                        height: 60,
                      ),

                      Container(
                        child: Column(children: [
                          Wrap(
                            spacing: 100,
                            runSpacing: 30,
                            children: List.generate(9, (index) {
                              int indexEdit = index;
                              return number(num: (index + 1).toString());
                            }),
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          Row(
                            children: [
                              const Spacer(),
                              const SizedBox(width: 75),
                              number(num: "0"),
                              const Spacer(),
                              GestureDetector(
                                child: SvgPicture.asset(
                                    "assets/images/backspace.svg"),
                                onTap: () {
                                  setState(() {
                                    if (pin.isNotEmpty) {
                                      pin.removeLast();
                                    }
                                  });
                                },
                              ),
                              const SizedBox(width: 35)
                            ],
                          )
                        ]),
                      ),
                      const SizedBox(height: 40),
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
                            'Continue',
                            style: TextStyle(color: Colors.white, fontSize: 18),
                          ),
                        ),
                      ),
                    ],
                  ),
                ))));
  }

  dot({required Color color}) {
    return Container(
      width: 12,
      height: 12,
      margin: const EdgeInsets.all(4),
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: color,
      ),
    );
  }

  number({required String num}) {
    return GestureDetector(
      child: Text(
        num,
        style: const TextStyle(
          fontSize: 32,
          fontWeight: FontWeight.bold,
          color: Colors.black,
        ),
      ),
      onTap: () {
        setState(() {
          pin.add(num);
          // if (pin.length == 4) {
          //   Navigator.push(context, MaterialPageRoute(builder: (context) => Summary()));
          // }
        });
      },
    );
  }
}
