import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'SendPrescription.dart';

void main() {
  runApp(const PrescribeDrugsViewAll());
}

class PrescribeDrugsViewAll extends StatelessWidget {
  const PrescribeDrugsViewAll({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
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
                  'Prescribe drugs',
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
        body: Padding(padding: const EdgeInsets.all(12),
    child: Column(
          children: [

            drug(
              name: 'Ibuprofen',
              dosage: '1 pill(s)',
              instructions: '2X daily',
              drugUnit: '1 pack:  '
            ),
            const SizedBox(height: 20,),

            Align(
              child:
              Container(
                decoration: BoxDecoration(color: const Color(0xffE2EDFF), borderRadius: BorderRadius.circular(10)),
                padding: const EdgeInsets.all(10),
                child: const Row(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Icon(Icons.add_circle_outline,color: Colors.blue,),
                      SizedBox(width: 8,),
                      Text('Add Prescription', style: TextStyle(fontSize: 14, color: Colors.blue)),
                      SizedBox(width: 6,),
                    ]
                ),
              ),
            ),
            const Spacer(),
            ElevatedButton(
              onPressed: () {
                Navigator.of(context).push(MaterialPageRoute(builder: (builder)=>const SendPrescription()));
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.blue,
                fixedSize: Size.fromWidth(MediaQuery.of(context).size.width),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(9),
                ),
              ),
              child: const Padding(
                padding: EdgeInsets.symmetric(vertical: 12.0, horizontal: 24.0),
                child: Text(
                  'Continue',
                  style: TextStyle(color: Colors.white, fontSize: 18),
                ),
              ),
            ),

          ],
        ),
    ),
    );
  }

  drug({
    required String name,
    required String dosage,
    required String instructions,
    required String drugUnit
  }) {
    return Container(
      padding: const EdgeInsets.all(10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        border: Border.all(color: Colors.grey.shade200, width: 1),
      ),
        child: Row(
          children: [
      Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
          Text(name, style: const TextStyle(fontSize: 18)),
            const SizedBox(height: 10,),
          Row(
          children: [
            Text(drugUnit, style: TextStyle(color: Colors.grey[500]),),
            Text('$dosage . $instructions', style: TextStyle(color: Colors.grey[500])),
          ],
        ),
        ],
        ),
          const Spacer(),
            const Icon(Icons.keyboard_arrow_down)
          ],
        ),
    );
  }
}
