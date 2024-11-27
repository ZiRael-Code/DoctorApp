import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';


void main(){
  runApp(const DeviceInformation());
}

class DeviceInformation extends StatefulWidget {
  const DeviceInformation({super.key});
  @override
  _DeviceInformationState createState() => _DeviceInformationState();
}

class _DeviceInformationState extends  State<DeviceInformation> {
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
                    const Center(child: Text(
                      'Device Information',
                      style: TextStyle(
                          fontSize: 20,
                          fontStyle: FontStyle.normal
                      ),
                    ),
                    ),
                  ),
                  const Spacer(),

                ],
              ),
              centerTitle: true,
            ),
            body:
            Container(
                padding: const EdgeInsets.all(25),
                child:
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(alignment: Alignment.center,child:
                    SvgPicture.asset('assets/images/dev.svg', height: 117, width: 195,),
                    ),
                    const SizedBox(height: 30,),
                    const Text(
                      'Name:',
                      style: TextStyle(color: Colors.grey, fontSize: 14),
                    ),
                    const SizedBox(height: 5),
                    const Text(
                      'Wellue Bp2 Connect device',
                      style: TextStyle(color: Colors.black, fontSize: 16),
                    ),


                    const SizedBox(height: 15),
                    SvgPicture.asset('assets/images/line.svg'),

                    const SizedBox(height: 20),

                    // Price
                    const Text(
                      'Price:',
                      style: TextStyle(color: Colors.grey, fontSize: 14),
                    ),
                    const SizedBox(height: 5),
                    const Text(
                      'N25,000.00',
                      style: TextStyle(fontWeight: FontWeight.bold, color: Colors.blue, fontSize: 16),
                    ),

                    const SizedBox(height: 15),
                    SvgPicture.asset('assets/images/line.svg'),

                    const SizedBox(height: 20),

                    // Vitals measured
                    const Text(
                      'Vitals measured:',
                      style: TextStyle(color: Colors.grey, fontSize: 14),
                    ),
                    const SizedBox(height: 5),
                    const Text(
                      'Oxygen saturation, blood pressure, stress level, body temperature.',
                      style: TextStyle(color: Colors.black, fontSize: 16),
                    ),
                    const SizedBox(height: 15),
                    SvgPicture.asset('assets/images/line.svg'),


                    const SizedBox(height: 30),

                    // How many devices do you need?
                    const Center(child: Text(
                      'How many devices do you need?',
                      style: TextStyle(color: Colors.black, fontSize: 18),
                    ),
                    ),

                    const SizedBox(height: 25),

                    // Row for quantity control
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        // Decrease button
                        Container(
                          width: 35,
                          height: 35,
                          decoration: const BoxDecoration(
                            color: Color(0xffE2EDFF),
                            shape: BoxShape.circle,
                          ),
                          child: IconButton(
                            icon: const Icon(Icons.remove, size: 16,color: Colors.blue),
                            onPressed: () {
                              // Logic to decrease the number
                            },
                          ),
                        ),

                        const SizedBox(width: 25),

                        // Display quantity
                        const Text(
                          '1',
                          style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold, color: Colors.black),
                        ),

                        const SizedBox(width: 25),
                        // Increase button
                        Container(
                          width: 35,
                          height: 35,
                          decoration: const BoxDecoration(
                            color: Color(0xffE2EDFF),
                            shape: BoxShape.circle,
                          ),
                          child: IconButton(
                            icon: const Icon(Icons.add, size: 16, color: Colors.blue),
                            onPressed: () {
                              // Logic to increase the number
                            },
                          ),
                        ),
                      ],
                    ),

                    const Spacer(),

                    // Place an Order button
                    SizedBox(
                      height: 55,
                      width: double.infinity, // Match screen width
                      child: ElevatedButton(
                        onPressed: () {
                          // Logic for placing an order
                        },
                        style: ElevatedButton.styleFrom(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(12), // Border radius of 12
                          ),
                          backgroundColor: Colors.blue,
                        ),
                        child: const Text(
                          'Place an order',
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                    ),
                    const SizedBox(height: 45,),
                  ],
                )
            )

        ));
  }
}