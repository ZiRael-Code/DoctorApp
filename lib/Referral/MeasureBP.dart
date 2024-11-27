import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';


void main(){
  runApp(const MeasureBP());
}

class MeasureBP extends StatefulWidget {
  const MeasureBP({super.key});
  @override
  _MeasureBP createState() => _MeasureBP();
}

class _MeasureBP extends  State<MeasureBP> {
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
            width: 35,
            height: 35,
            padding: const EdgeInsets.all(10),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(50),
              color: const Color(0xFFE5E5E5),
            ),
            child: const Icon(Icons.share),
            ),

            ],
          ),
          centerTitle: true,
        ),
        body:
        Container(
            padding: const EdgeInsets.only(bottom: 30, left: 15, right: 15),
            child:
            Align(
              child:
              Column(
                children: [
                  const SizedBox(height: 30),
                  Container(
                    decoration: BoxDecoration(
                      border: Border.all(width: 1, color: Colors.black.withOpacity(0.15)),
                      borderRadius: BorderRadius.circular(12),
                    ),
                      margin: const EdgeInsets.only(left: 15),
                      padding: const EdgeInsets.all(15),
                      child: Column(
                          children: [
                            Row(
                              children: [
                                Row(
                                children: [
                                  // Spacer(),
                                Column(
                                  children: [
                                    const Text('107/60', style: TextStyle(fontWeight: FontWeight.bold,fontSize: 26),),
                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.start,
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        const Text('SYS/DIA  ', style: TextStyle(fontSize: 10),),
                                        Text('mmHg', style: TextStyle(color: Colors.grey.withOpacity(0.85),fontSize: 10),)
                                      ],
                                    )
                                  ],
                                ),
                                  ],
                                ),
                                const Spacer(),
                                Container(
                                  decoration: const BoxDecoration(
                                    shape: BoxShape.circle,
                                    color: Colors.purple,
                                  ),
                                  width: 46,
                                  height: 46,
                                  padding: const EdgeInsets.all(8),
                                  child: SvgPicture.asset('assets/images/si.svg'),
                                ),

                              ],
                            ),
                            const SizedBox(height: 15,),
                            SvgPicture.asset('assets/images/line.svg'),
                            const SizedBox(height: 15,),
                            Row(
                              children: [
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    const Text('Pulse rate', style: TextStyle(fontSize: 10),),
                                    Row(
                                      children: [
                                        const Text('83  ', style: TextStyle(fontSize: 10),),
                                        Text('/min', style: TextStyle(color: Colors.grey.withOpacity(0.85),fontSize: 10),)
                                      ],
                                    )
                                  ],
                                ),
                                const SizedBox(width: 55,),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    const Text('MAP', style: TextStyle(fontSize: 10),),
                                    Row(
                                      children: [
                                        const Text('91  ', style: TextStyle(fontSize: 10),),
                                        Text('mmHg', style: TextStyle(color: Colors.grey.withOpacity(0.85),fontSize: 10),)
                                      ],
                                    )
                                  ],
                                ),
                                const SizedBox(width: 55,),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    const Text('Blood pressure', style: TextStyle(fontSize: 10),),
                                    Row(
                                      children: [
                                        const Text('48  ', style: TextStyle(fontSize: 10),),
                                        Text('mmHg', style: TextStyle(color: Colors.grey.withOpacity(0.85),fontSize: 10),)
                                      ],
                                    )
                                  ],
                                )
                              ],
                            ),
                          ]
                      )
                  ),
                  SizedBox(height: MediaQuery.of(context).size.height*0.05),
                  SvgPicture.asset('assets/images/colorgraph.svg'),
                  SizedBox(height: MediaQuery.of(context).size.height*0.020),
                  SizedBox(
                    width: MediaQuery.of(context).size.width * 0.54,
                    child: const Text(textAlign: TextAlign.center, '*press START/STOP button to start or stop measuring'),
                  ),
                  SizedBox(height: MediaQuery.of(context).size.height*0.06),
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Align(
                    alignment: Alignment.centerLeft,
                    child:
                  // Account Number TextField
                  TextField(
                    maxLines: 3,
                    decoration: InputDecoration(
                      hintText: 'Note',
                      hintStyle: const TextStyle(
                        color: Colors.grey,
                      ),
                      filled: true,
                      fillColor: Colors.grey[300],
                      contentPadding: const EdgeInsets.symmetric(
                        vertical: 15.0, // Height of 50 (including padding)
                        horizontal: 10.0,
                      ),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8.0),
                        borderSide: BorderSide.none,
                      ),
                    ),
                    style: const TextStyle(
                      fontSize: 16.0,
                    ),
                  ),
                )
                ],
              ),
            ])))));
  }
}