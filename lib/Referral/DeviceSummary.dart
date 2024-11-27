import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

void main() {
  runApp(const DeviceSummary());
}

class DeviceSummary extends StatefulWidget {
  const DeviceSummary({super.key});
  @override
  _DeviceSummaryState createState() => _DeviceSummaryState();
}

class _DeviceSummaryState extends State<DeviceSummary> {
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
                    'Summary',
                    style: TextStyle(fontSize: 20, fontStyle: FontStyle.normal),
                  ),
                ),
              ),
              const Spacer(),
            ],
          ),
          centerTitle: true,
        ),
        body: Container(
          padding: const EdgeInsets.all(25),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(
                height: 45,
              ),
              Container(
                alignment: Alignment.center,
                child: SvgPicture.asset(
                  'assets/images/dev.svg',
                  height: 117,
                  width: 195,
                ),
              ),
              const SizedBox(
                height: 70,
              ),

              const Center(
                child: Text(
                  'Wellue Bp2 Connect device',
                  style: TextStyle(color: Colors.black, fontSize: 16),
                ),
              ),

              const SizedBox(height: 10),
              // Summary

              Align(
                alignment: Alignment.center,
                child: SizedBox(
                  width: 150,
                  child: Container(
                    alignment: Alignment.center,
                    padding: const EdgeInsets.all(12),
                    decoration: BoxDecoration(
                      border: Border.all(width: 0.05),
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: const Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Text(
                          'PRICE: ',
                          style: TextStyle(color: Colors.grey, fontSize: 14),
                        ),
                        SizedBox(width: 5),
                        Text(
                          'N25,000.00',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.blue,
                            fontSize: 16,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),

              const SizedBox(
                height: 25,
              ),

              const Wrap(
                direction: Axis.horizontal,
                children: [
                  Row(
                    children: [
                      Text("Arrival date:"),
                      Spacer(),
                      Text("9th August 2022"),
                    ],
                  ),
                  SizedBox(height: 40),
                  Row(
                    children: [
                      Text("Price:"),
                      Spacer(),
                      Text("N25,000.00"),
                    ],
                  ),
                  SizedBox(height: 40),
                  Row(
                    children: [
                      Text("Quantity:"),
                      Spacer(),
                      Text("1"),
                    ],
                  ),
                  SizedBox(height: 40),
                  Row(
                    children: [
                      Text("Delivery fee:"),
                      Spacer(),
                      Text("N1,500.00"),
                    ],
                  ),
                  SizedBox(height: 40),
                  Row(
                    children: [
                      Text(
                        "TOTAL:",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      Spacer(),
                      Text("N26,550.00"),
                    ],
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
                      borderRadius:
                          BorderRadius.circular(12), // Border radius of 12
                    ),
                    backgroundColor: Colors.blue,
                  ),
                  child: const Text(
                    'Proceed with online payment',
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ),
              const SizedBox(
                height: 45,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
