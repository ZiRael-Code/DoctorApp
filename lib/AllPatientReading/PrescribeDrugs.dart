import 'package:doctor_app/AllPatientReading/PrescribeDrugsAddDrug.dart';
import 'package:doctor_app/AllPatientReading/SelectPharmacy.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

void main() {
  runApp(const PrescribeDrugs());
}

class PrescribeDrugs extends StatelessWidget {
  const PrescribeDrugs({super.key});

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
        body: Column(
          children: [
            GestureDetector(
              onTap: () {
                // Navigate to the next screen
                Navigator.push(context, MaterialPageRoute(builder: (context) => const PrescribeDrugsAddDrugs()));
    },
              child:
            fundMethod(text: "Prescribe from personal store",
                imagePath: const Icon(Icons.add_home_work_outlined, color: Colors.blue,),
                icon:  const Icon(Icons.arrow_forward_ios_rounded, color: Colors.blue,)
                ,bottom: 'For doctors who have personal ministore'
            ),
            ),
    GestureDetector(
    onTap: () {
    // Navigate to the next screen
    Navigator.push(context, MaterialPageRoute(builder: (context) => const SelectPharmacy()));
    },
          child:  fundMethod(text: "Prescribe from existing pharmacy",
                imagePath: const Icon(Icons.medication_liquid_sharp, color: Colors.blue,),
                icon:  const Icon(Icons.arrow_forward_ios_rounded, color: Colors.blue,)
            ),
            ),
    GestureDetector(
    onTap: () {
    // Navigate to the next screen
    Navigator.push(context, MaterialPageRoute(builder: (context) => const PrescribeDrugsAddDrugs()));
    },
    child:
            fundMethod(text: "Send a prescriptiption list",
                imagePath: const Icon(Icons.task_rounded, color: Colors.blue,),
                icon:  const Icon(Icons.arrow_forward_ios_rounded, color: Colors.blue,)
            ),
            ),
          ],
        ),
    );
  }
}

fundMethod (
    {

      required String text,
      required Icon imagePath,
      required Icon icon,
      bottom,
    }){
  return Padding(padding: const EdgeInsets.all(15),
    child: Container(
      padding: const EdgeInsets.all(12),
      width: double.infinity,
      height: 74,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
        border: Border.all(
          color: const Color(0xFFE5E5E5),
          width: 0.5,
        ),
      ),
      child: Row(children: [
        Container(
          width: 42,
          height: 42,
          padding: const EdgeInsets.all(10),
          decoration: const BoxDecoration(
            color: Color(0xFFE2EDFF),
            shape: BoxShape.circle,
          ),
          child: imagePath,
        ),
        const SizedBox(width: 25,),
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
        Text(
          text,
          style: const TextStyle(
            color: Color(0xFF2E2E42),
            fontSize: 16,
          ),
        ),
         bottom != null ? const SizedBox(height: 5,) : Container(),
          bottom != null ? Text(
            bottom,
            style: const TextStyle(
              color: Color(0xFF959595),
              fontSize: 12,
            ),
          )
          : Container()
        ],),
        const Spacer(),
        icon
      ],),
    ),
  );
}