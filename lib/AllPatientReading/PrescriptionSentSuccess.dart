import 'package:flutter/material.dart';

class Prescriptionsentsuccess extends StatelessWidget {
  const Prescriptionsentsuccess({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(child: Padding(padding: const EdgeInsets.only(bottom: 26, left: 16, right: 16, top:  10), child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        const SizedBox(height: 80),
        const Text('Success!', style: TextStyle(fontSize: 36,fontWeight: FontWeight.bold),),
        const SizedBox(height: 13),
        const Text('Prescription has been sent', style: TextStyle(fontSize: 14,),),
        const Spacer(),
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
              'Okay',
              style: TextStyle(color: Colors.white, fontSize: 18),
            ),
          ),
        ),
      ],
    )
    )
    )
    );
  }
}
