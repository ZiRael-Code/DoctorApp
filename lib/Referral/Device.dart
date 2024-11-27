import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

void main() {
  runApp(const Device());
}

class Device extends StatefulWidget {
  const Device({super.key});
  @override
  _DeviceScreen createState() => _DeviceScreen();
}

class _DeviceScreen extends State<Device> {
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
                        'Device',
                        style: TextStyle(
                            fontSize: 20, fontStyle: FontStyle.normal),
                      ),
                    ),
                  ),
                  const Spacer(),
                ],
              ),
              centerTitle: true,
            ),
            body: Container(
                padding: const EdgeInsets.only(bottom: 30, left: 15, right: 15),
                child: Align(
                    child: Column(children: [
                  const SizedBox(
                    height: 25,
                  ),
                  Container(
                    padding: const EdgeInsets.all(20),
                    width: double.infinity,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12),
                        border:
                            Border.all(color: Colors.black.withOpacity(0.09))),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SvgPicture.asset('assets/images/dev.svg'),
                        const SizedBox(
                          width: 20,
                        ),
                        const Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Text('BP2 Connect 1368',
                                style: TextStyle(fontSize: 18)),
                            SizedBox(
                              width: 26,
                            ),
                            Align(
                                alignment: Alignment.centerLeft,
                                child: Text(
                                  'Connected',
                                  style: TextStyle(color: Colors.blue),
                                ))
                          ],
                        )
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),

                  const Align(
                      alignment: Alignment.centerLeft,
                      child: Text('Device Reading',
                          style: TextStyle(
                              fontSize: 16, fontWeight: FontWeight.bold))),
                  const SizedBox(
                    height: 20,
                  ),

                  reading_history(
                    mmhg: "107/60",
                    bpm: "67",
                    date: "Today, 12:00 am",
                    bulletColor: Colors.lightGreenAccent,
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  reading_history(
                    mmhg: "125/60",
                    bpm: "88",
                    date: "14 Jul 2022. 12:00 am",
                    bulletColor: const Color(0xFFFAB400),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  reading_history(
                    mmhg: "107/60",
                    bpm: "67",
                    date: "Today, 12:00 am",
                    bulletColor: Colors.lightGreenAccent,
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  reading_history(
                    mmhg: "125/60",
                    bpm: "88",
                    date: "14 Jul 2022. 12:00 am",
                    bulletColor: const Color(0xFFFAB400),
                  ),
                  const SizedBox(
                    height: 10,
                  ),

                  // irregular_reading_history(
                  //     date: "14 Jul 2022 . 12:00 am",
                  //     text: "Irregular ECG",
                  //     stackColor:  Color(0xFFFAB400)
                  // ),
                  // SizedBox(height: 10,),
                ])))));
  }

  reading_history({
    required mmhg,
    required bpm,
    required date,
    required bulletColor,
  }) {
    return Container(
      height: 85,
      width: double.infinity,
      decoration: BoxDecoration(
        color: Colors.grey.withOpacity(0.2),
        borderRadius: BorderRadius.circular(12),
      ),
      padding: const EdgeInsets.only(left: 10, right: 10),
      child: Row(
        children: [
          Align(
            alignment: Alignment.topLeft,
            child: Container(
              margin: const EdgeInsets.only(top: 28),
              width: 11,
              height: 11,
              decoration: BoxDecoration(
                color: bulletColor,
                shape: BoxShape.circle,
              ),
            ),
          ),
          const SizedBox(width: 16),
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Text(
                      mmhg,
                      style: const TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 18,
                      ),
                    ),
                    const SizedBox(width: 4),
                    const Text(
                      'mmHg',
                      style: TextStyle(
                        fontSize: 10,
                      ),
                    ),
                    const SizedBox(width: 16),
                    Text(
                      bpm,
                      style: const TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 18,
                      ),
                    ),
                    const SizedBox(width: 4),
                    const Text(
                      'BPM',
                      style: TextStyle(
                        fontSize: 10,
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 4),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      date,
                      style: const TextStyle(
                        fontSize: 10,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          const Icon(
            Icons.arrow_forward_ios_outlined,
            size: 16,
            color: Colors.black,
          ),
        ],
      ),
    );
  }

  irregular_reading_history({
    required text,
    required date,
    required stackColor,
  }) {
    return Container(
      height: 85,
      width: double.infinity,
      decoration: BoxDecoration(
        color: Colors.grey.withOpacity(0.2),
        borderRadius: BorderRadius.circular(12),
      ),
      padding: const EdgeInsets.only(right: 10),
      child: Row(
        children: [
          Align(
              alignment: Alignment.topLeft,
              child: SvgPicture.asset(
                "assets/images/irr.svg",
                fit: BoxFit.fitHeight,
              )),
          const SizedBox(width: 16),
          Expanded(
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: double.infinity,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        text,
                        style: const TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 18,
                        ),
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      Text(
                        date,
                        style: const TextStyle(
                          fontSize: 10,
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 4),
                const Spacer(),
                const Align(
                  alignment: Alignment.centerRight,
                  child: Icon(
                    Icons.arrow_forward_ios_outlined,
                    size: 16,
                    color: Colors.black,
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}