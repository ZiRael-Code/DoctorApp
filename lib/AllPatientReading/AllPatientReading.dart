import 'package:doctor_app/AllPatientReading/PatientReading.dart';
import 'package:doctor_app/components/patient_reading.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
// import 'package:flutter_svg/svg.dart';

void main() {
  runApp(MaterialApp(home: AllPatientReading()));
}

class AllPatientReading extends StatefulWidget {
  const AllPatientReading({super.key});

  @override
  _AllPatientState createState() => _AllPatientState();
}

class _AllPatientState extends State<AllPatientReading> {
  List<Map<String, dynamic>> patientReadings = [
    {
      'name': 'Salami Adebayo',
      'path': 'assets/images/guy.png',
      'date': '12th Sept 2022',
      'time': '4:17pm',
      'bp': '90/60mmHg',
      'hba1c': '42mmol/mol',
      'ihra': '5.7%',
      'oxy': '95%',
      'regularity': 'irregular',
      'isOnline': true,
      'regularityColor': const Color(0xffFF8E3C),
    },
    {
      'name': 'Fatima Abdullahi',
      'path': 'assets/images/guy.png',
      'date': '10th Oct 2022',
      'time': '3:30pm',
      'bp': '120/80mmHg',
      'hba1c': '48mmol/mol',
      'ihra': '6.5%',
      'oxy': '98%',
      'regularity': 'regular',
      'isOnline': false,
      'regularityColor': const Color(0xffFF8E3C),
    },
    {
      'name': 'Adisa Asabe',
      'path': 'assets/images/guy.png',
      'date': '5th Nov 2022',
      'time': '1:00pm',
      'bp': '130/85mmHg',
      'hba1c': '50mmol/mol',
      'ihra': '7.0%',
      'oxy': '97%',
      'regularity': 'irregular',
      'isOnline': true,
      'regularityColor': const Color(0xffFF8E3C),
    },
    {
      'name': 'Mary Johnson',
      'path': 'assets/images/guy.png',
      'date': '20th Aug 2022',
      'time': '9:45am',
      'bp': '110/70mmHg',
      'hba1c': '45mmol/mol',
      'ihra': '6.0%',
      'oxy': '96%',
      'regularity': 'regular',
      'isOnline': true,
      'regularityColor': const Color(0xffFF8E3C),
    },
    {
      'name': 'Chinedu Obi',
      'path': 'assets/images/guy.png',
      'date': '15th July 2022',
      'time': '11:30am',
      'bp': '100/65mmHg',
      'hba1c': '40mmol/mol',
      'ihra': '5.5%',
      'oxy': '94%',
      'regularity': 'irregular',
      'isOnline': false,
      'regularityColor': const Color(0xffFF8E3C),
    },
  ];
  List<Map<String, dynamic>> filteredList = [];
  List<String> btnText = [
    "Irregular",
    "Regular",
    "Doctor",
    "Gynaecologist",
    "Dentist",
    "Surgeon",
    "Surgeon",
    "Opthalmologist",
    "Others..."
  ];
  bool isFilterOpen = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
            backgroundColor: Colors.white,
            title: Row(children: [
              InkWell(
                onTap: () {
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => const PatientReading()));
                  // Navigator.pop(context);
                },
                child: Container(
                    padding: const EdgeInsets.all(8),
                    decoration: const BoxDecoration(
                        color: Color(0xffE5E5E5), shape: BoxShape.circle),
                    child: const Icon(
                      Icons.arrow_back_ios_rounded,
                      color: Color(0xff666666),
                    )),
              ),
              const Spacer(),
              const Text('All Patient\'s Reading'),
              const Spacer(),
            ])),
        body: Padding(
          padding: const EdgeInsets.only(left: 16, right: 16, top: 25),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    width: 10,
                    height: 10,
                    decoration: const BoxDecoration(
                        color: Color(0xffE5E5E5), shape: BoxShape.circle),
                  ),
                  const SizedBox(
                    width: 8,
                  ),
                  const Text('Unchecked'),
                  const SizedBox(
                    width: 8,
                  ),
                  Container(
                    width: 10,
                    height: 10,
                    decoration: const BoxDecoration(
                        color: Colors.green, shape: BoxShape.circle),
                  ),
                  const SizedBox(
                    width: 8,
                  ),
                  const Text('Checked')
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              Row(
                children: [
                  // Search field
                  Container(
                    padding: const EdgeInsets.only(right: 10),
                    width: MediaQuery.of(context).size.width * 0.70,
                    decoration: BoxDecoration(
                      color: Colors.grey[200],
                      borderRadius: BorderRadius.circular(30),
                    ),
                    child: TextField(
                      onChanged: (value) {
                        setState(() {
                          filteredList = patientReadings.where((item) {
                            return item['name']
                                .toLowerCase()
                                .contains(value.toLowerCase());
                          }).toList();
                        });
                      },
                      decoration: const InputDecoration(
                        hintText: 'Search by name, vital reading..',
                        hintStyle: TextStyle(color: Colors.grey),
                        prefixIcon: Icon(Icons.search, color: Colors.grey),
                        border: InputBorder.none,
                        contentPadding: EdgeInsets.symmetric(vertical: 15),
                      ),
                    ),
                  ),

                  // Filter icon
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        isFilterOpen = !isFilterOpen;
                      });
                    },
                    child: Container(
                      margin: const EdgeInsets.only(left: 5),
                      padding: const EdgeInsets.all(12),
                      decoration: BoxDecoration(
                        color: Colors.grey[200],
                        shape: BoxShape.circle,
                      ),
                      child: isFilterOpen
                          ? const Icon(Icons.close, color: Colors.black)
                          : SvgPicture.asset('assets/images/filter.svg'),
                    ),
                  ),
                ],
              ),
              if (isFilterOpen)
                Container(
                  margin: const EdgeInsets.only(top: 16),
                  width: double.infinity,
                  padding: const EdgeInsets.all(16),
                  decoration: const BoxDecoration(),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        "Filters",
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 18,
                        ),
                      ),
                      const SizedBox(height: 20), //
                      Wrap(
                        spacing: 5, //
                        runSpacing: 8, //
                        children: [
                          for (int i = 0;
                              i <= btnText.length - 1;
                              i++) // Create 9 buttons
                            ElevatedButton(
                              onPressed: () {
                                // Button logic here
                              },
                              style: ElevatedButton.styleFrom(
                                side: BorderSide(
                                  color: i == btnText.length - 1
                                      ? Colors.blue
                                      : Colors.transparent, // Border color
                                  width: i == btnText.length - 1
                                      ? 1.0
                                      : 0.0, // Border width
                                ),
                                shadowColor: Colors.transparent,
                                backgroundColor: i == btnText.length - 1
                                    ? Colors.transparent
                                    : const Color(0xFFE2EDFF), // Button color
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(
                                      50), // Rounded corners
                                ),
                              ),
                              child: Padding(
                                padding: const EdgeInsets.all(0),
                                child: Text(
                                  btnText[i],
                                  style: const TextStyle(
                                      color: Color(0xff3C8AFF),
                                      fontSize: 11.5), // Button text color
                                ),
                              ),
                            ),
                        ],
                      ),
                    ],
                  ),
                ),
              const SizedBox(
                height: 20,
              ),
              Expanded(
                  child: ListView(
                children: List.generate(
                  filteredList.isEmpty
                      ? patientReadings.length
                      : filteredList.length,
                  (index) => InkWell(
                    onTap: () {
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => const PatientReading()));
                    },
                    child: patient_reading(
                      name: patientReadings[index]['name'],
                      path: patientReadings[index]['path'],
                      date: patientReadings[index]['date'],
                      time: patientReadings[index]['time'],
                      bp: patientReadings[index]['bp'],
                      hba1c: patientReadings[index]['hba1c'],
                      ihra: patientReadings[index]['ihra'],
                      oxy: patientReadings[index]['oxy'],
                      regularity: patientReadings[index]['regularity'],
                      isOnline: patientReadings[index]['isOnline'],
                      regularityColor: patientReadings[index]
                          ['regularityColor'],
                    ),
                  ),
                ),
              ))
            ],
          ),
        ));
  }

  patient_reading({
    required String name,
    required String path,
    required String date,
    required String bp,
    required String hba1c,
    required String ihra,
    required String oxy,
    required String regularity,
    required Color regularityColor,
    required String time,
    required bool isOnline,
  }) {
    return Container(
      margin: const EdgeInsets.only(bottom: 18),
      padding: const EdgeInsets.all(16.0),
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(12.0),
          border: Border.all(width: 0.7, color: Colors.black12)),
      child: Stack(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Label
              Container(
                padding:
                    const EdgeInsets.symmetric(horizontal: 8.0, vertical: 4.0),
                decoration: BoxDecoration(
                  color: regularityColor.withOpacity(0.15),
                  borderRadius: BorderRadius.circular(8.0),
                ),
                child: Text(
                  regularity,
                  style: TextStyle(
                    color: regularityColor,
                  ),
                ),
              ),
              const SizedBox(height: 12.0),
              // User Information
              Row(
                children: [
                  CircleAvatar(
                    backgroundImage:
                        AssetImage(path), // Replace with your image asset
                    radius: 24.0,
                  ),
                  const SizedBox(width: 12.0),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        name,
                        style: const TextStyle(
                          fontSize: 16.0,
                        ),
                      ),
                      const SizedBox(height: 4.0),
                      Text(
                        '$time · $date',
                        style: const TextStyle(
                          color: Colors.grey,
                          fontSize: 12.0,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              const SizedBox(height: 16.0),
              Padding(
                  padding: const EdgeInsets.only(right: 50),
                  child: Divider(
                    color: Colors.grey[300],
                  )),
              const SizedBox(height: 8.0),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Row(
                    children: [
                      const Text(
                        'BP: ',
                        style: TextStyle(color: Colors.blue, fontSize: 11),
                      ),
                      Text(bp, style: const TextStyle(fontSize: 11)),
                    ],
                  ),
                  Row(
                    children: [
                      const Text(
                        'HbA1c: ',
                        style: TextStyle(color: Colors.blue, fontSize: 11),
                      ),
                      Text(hba1c, style: const TextStyle(fontSize: 11)),
                    ],
                  ),
                  Row(
                    children: [
                      const Text(
                        'IHRA: ',
                        style: TextStyle(color: Colors.blue, fontSize: 11),
                      ),
                      Text(ihra, style: const TextStyle(fontSize: 11)),
                    ],
                  ),
                  Row(
                    children: [
                      const Text(
                        'Oxygen: ',
                        style: TextStyle(color: Colors.blue, fontSize: 11),
                      ),
                      Text(oxy, style: const TextStyle(fontSize: 11)),
                    ],
                  )
                ],
              ),
            ],
          ),
          Positioned(
              right: 0,
              child: Container(
                width: 13,
                height: 13,
                decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: isOnline ? Colors.green : Colors.grey[300]),
              ))
        ],
      ),
    );
  }
}
