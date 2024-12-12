import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class Device extends StatefulWidget {
  Device({super.key});

  @override
  State<Device> createState() => _DeviceState();
}

class _DeviceState extends State<Device> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView( child: Column(
        children: [
          SizedBox(height: 25,),
          recomendDevice(
            name: "Wellue BP2 Connect Device",
            measures: "Measures 1 vital",
            image: "assets/images/printer.svg",
            prices: "N25,000",
          ),
          SizedBox(height: 15,),
          recomendDevice(
            name: "Wellue BP2 Connect Device",
            measures: "Measures 1 vital",
            image: "assets/images/printer.svg",
            prices: "N25,000",
          ),

          SizedBox(height: 15,),
          recomendDevice(
            name: "Wellue BP2 Connect Device",
            measures: "Measures 1 vital",
            image: "assets/images/printer.svg",
            prices: "N25,000",
          ),

        ],
      )
      )
    );
  }
}

recomendDevice({
  required String name,
  required String measures,
  required String image,
  required String prices,
}) {
  return Container(
    padding: EdgeInsets.all(18),
    width: double.infinity,
    decoration: BoxDecoration(
      border: Border.all(
        color: Colors.black.withOpacity(0.1),
        width: 1,
      ),
      borderRadius: BorderRadius.circular(20),
    ),
    child: Row(
      children: [
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                name,
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 16,
                ),
              ),
              SizedBox(height: 8),
              Container(
                margin: EdgeInsets.only(left: 10),
                padding: EdgeInsets.all(8),
                decoration: BoxDecoration(
                  color: Colors.grey.withOpacity(0.2),
                  borderRadius: BorderRadius.circular(7),
                ),
                child: Text(measures),
              ),
              SizedBox(height: 8),
              Text(
                prices,
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.blue,
                  fontSize: 20,
                ),
              ),
              SizedBox(height: 16),

              Row(
                children: [
                  Text("Qty left:"),
                  SizedBox(width: 13),
                  Container(
                    padding: EdgeInsets.all(12),
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.grey.shade200
                    ),
                    child: Text("95"),
                  )
                ],
              )
            ],
          ),
        ),
        SizedBox(height: 15),
        Container(
          padding: EdgeInsets.all(12),
          height: 110,
          width: 110,
          decoration: BoxDecoration(
            color: Colors.grey.withOpacity(0.20),
            borderRadius: BorderRadius.circular(50),
          ),
          child: SvgPicture.asset(image),
        ),
      ],
    ),
  );
}

