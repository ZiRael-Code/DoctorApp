import 'package:doctor_app/AllPatientReading/PrescriptionSentSuccess.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

void main() {
  runApp(const SendPrescription());
}

class SendPrescription extends StatelessWidget {
  const SendPrescription({super.key});

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
                  'Send prescription',
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

            const SizedBox(height: 20,),

            const Wrap(
              direction: Axis.horizontal,
              children: [
                Row(
                  children: [
                    Text("Name:", style: TextStyle(color: Colors.black45)),
                    Spacer(),
                    Text("12/06/2022 - Prescriptions"),
                  ],
                ),
                SizedBox(height: 30),
                Row(
                  children: [
                    Text("Prescribed by:", style: TextStyle(color: Colors.black45)),
                    Spacer(),
                    Text("Dr. Muiz Sanni", ),
                  ],
                ),
                SizedBox(height: 30),
                Row(
                  children: [
                    Text("For:", style: TextStyle(color: Colors.black45)),
                    Spacer(),
                    Text("Janet Okoli"),
                  ],
                ),
                SizedBox(height: 30),
                Row(
                  children: [
                    Text("Date:", style: TextStyle(color: Colors.black45),),
                    Spacer(),
                    Text("22 June 2022"),
                  ],
                ),
              ],
            ),
              const SizedBox(height: 25,),



            drug(
              name: 'Ibuprofen',
              dosage: '1 pill(s)',
              instructions: '2X daily',
              drugUnit: '1 pack:  '
            ),

            const SizedBox(height: 20,),


            const Spacer(),

            Container(
              width: MediaQuery.of(context).size.width,
              padding: const EdgeInsets.all(12),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(7),
                color: const Color(0xFFF2F2F2),
              ),

              child: const Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Icon(Icons.info, color: Colors.black45,),
                  SizedBox(width: 10),
                  SizedBox(
                      width: 250,
                      child:
                      Text("Prescription will be sent to patient as a message", softWrap: true,)
                  ),
                ],
              ),
            ),

            const SizedBox(height: 40,),

            ElevatedButton(
              onPressed: () {
                Navigator.of(context).push(MaterialPageRoute(builder: (builder)=>const Prescriptionsentsuccess()));
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
                  'Send',
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
      padding: const EdgeInsets.all(12),
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

          ],
        ),
    );
  }
}
