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
                  'Order Information',
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
            const SizedBox(height: 35,),
            Container(alignment: Alignment.center,child:
            SvgPicture.asset('assets/images/dev.svg', height: 117, width: 195,),
            ),
            const SizedBox(height: 50,),

              const Center(child:
              Text(
              'Wellue Bp2 Connect device',
              style: TextStyle(color: Colors.black, fontSize: 16),
            ),
            ),

            const SizedBox(height: 25,),

            const Wrap(
              direction: Axis.horizontal,
              children: [
                Row(
                  children: [
                    Text("Arrival date:"),
                    Spacer(),
                    Text("9th August 2022"),
                  ],
                ) ,
                SizedBox(height: 30),
                Row(
                  children: [
                    Text("Price:"),
                    Spacer(),
                    Text("N25,000.00"),
                  ],
                ),
                SizedBox(height: 30),
                Row(
                  children: [
                    Text("Delivery fee:"),
                    Spacer(),
                    Text("N1,500.00"),
                  ],
                ),
                SizedBox(height: 30),
                Row(
                  children: [
                    Text("TOTAL:", style: TextStyle(fontWeight: FontWeight.bold),),
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
              child: Container(
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.red, width: 0.5),
                  borderRadius: BorderRadius.circular(12),
                ),
                child: ElevatedButton(
                  onPressed: () {
                    // Logic for placing an order
                  },
                  style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                    backgroundColor: Colors.transparent,
                    elevation: 0,
                  ),
                  child: const Text(
                    'Cancel Order',
                    style: TextStyle(color: Colors.red),
                  ),
                ),
              ),
            ),
            const SizedBox(height: 45),
            const SizedBox(height: 45,),
          ],
        )
        )

      ));
  }
}