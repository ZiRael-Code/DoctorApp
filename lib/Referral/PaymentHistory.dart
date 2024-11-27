import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

void main() {
  runApp(const PaymentHistory());
}

class PaymentHistory extends StatelessWidget {
  const PaymentHistory({super.key});

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
                  'Payment history',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              const Spacer(),
            ],
          ),
        ),
        body: Padding(
          padding: const EdgeInsets.all(15),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [

            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
              Container(
                height: 23,
                width: 23,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.blue.withOpacity(0.20),
                ),
                child: const Center(child: Icon(Icons.arrow_back_ios, color: Colors.blue, size: 15,),),
              ),
              const SizedBox(width: 8,),
              const Text(
                'August',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(width: 8,),
              Container(
                height: 23,
                width: 23,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.blue.withOpacity(0.20),
                ),
                child: const Center(child:  Icon(Icons.arrow_forward_ios_rounded, color: Colors.blue, size: 15,),),
              ),


            ],),

              const SizedBox(height: 35,),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  transactionHistories(
                    date: "'16/08/2022'",
                    name: "DR KELVIN APPOINTMENT",
                    type: "Appointment",
                    price: "N20,000",
                  ),
                  transactionHistories(
                    date: "16/08/2022",
                    name: "HYPERTENSION MEDICATION",
                    type: "Medications",
                    price: "N13,000",
                  ),
                  transactionHistories(
                    date: "16/08/2022",
                    name: "WELLUE BP2 CONNECT",
                    type: "Device",
                    price: "N8,500",
                  ),
                  transactionHistories(
                    date: "16/08/2022",
                    name: "HYPERTENSION MEDICATION",
                    type: "Medications",
                    price: "N13,000",
                  ),
                  transactionHistories(
                    date: "16/08/2022",
                    name: "WELLUE BP2 CONNECT",
                    type: "Device",
                    price: "N13,000",
                  ),
                  transactionHistories(
                    date: "16/08/2022",
                    name: "WELLUE BP2 CONNECT",
                    type: "Device",
                    price: "N13,000",
                  ),
                  transactionHistories(
                    date: "16/08/2022",
                    name: "WELLUE BP2 CONNECT",
                    type: "Device",
                    price: "N13,000",
                  ),

                ],),

            ],
          ),
        ),
      ),
    );
  }



  transactionHistories({
    required String date,
    required String name,
    required String type,
    required String price
  }) {
    return  Container(
      child:
      Column(
        children: [
          Row(children: [
            Container(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    name,
                    style: const TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
                  const SizedBox(height: 10,),
                  Text(
                    type,
                    style: const TextStyle(
                      fontSize: 12,
                    ),
                  ),
                ],
              ),
            ),
            const Spacer(),
            Column(children: [
              Text(
                price,
                style: const TextStyle(
                  fontSize: 16,
                  color: Colors.blue,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 10,),
              Text(
                date,
                style: const TextStyle(
                  fontSize: 12,
                ),
              ),

            ],),
          ],),
          const SizedBox(height: 10,),
          Container(
            width: 313,
            height: 2,
            decoration: const BoxDecoration(
              color: Color(0x1A2E2E42),
            ),
          ),
          const SizedBox(height: 15,)
        ],
      ),
    );
  }
}