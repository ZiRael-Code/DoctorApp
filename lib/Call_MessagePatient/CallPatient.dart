import 'package:flutter/material.dart';

class CallingUi extends StatefulWidget {
  const CallingUi({super.key});

  @override
  State<CallingUi> createState() => _CallingUiState();
}

class _CallingUiState extends State<CallingUi> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
        child: Padding(
            padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            const SizedBox(height: 70,),
            const SizedBox(
            width: 108,
            height: 108,
            child:
            CircleAvatar(
              radius: 50,
              backgroundImage: AssetImage('assets/images/doc.png'),
            )
            ),
            const SizedBox(height: 20,),
            const Text('Dr. Nelson Yang', style: TextStyle(fontSize: 16),)
            ,const Text('Calling', style: TextStyle(fontSize: 16, color: Colors.black26),)

            ,const Spacer(),
            Padding(padding: const EdgeInsets.only(left: 35, right: 35),
            child:
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                callAction(
                  icon: Icons.volume_up,
                ),
            Container(
              width: 62,
              height: 62,
              decoration: const BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.red,
              ),
              child: const Icon(Icons.phone_missed_outlined, color: Colors.white,),
            ),
                callAction(
                  icon: Icons.mic
                ),
              ],
            ),
            ),
            const SizedBox(height: 50,),
          ],
        )
        )
        )
    );
  }

  callAction({
    required IconData icon})
  {
    return Container(
      width: 62,
      height: 62,
      decoration: const BoxDecoration(
        shape: BoxShape.circle,
        color: Color(0xffE2EDFF),
      ),
      child: Icon(icon, color: Colors.blue,),
    );
  }
}
