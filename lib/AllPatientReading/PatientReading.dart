import '../MainSelectionScreen/Dashboard.dart';
import 'package:doctor_app/AllPatientReading/DrugCompliance.dart';
import 'package:doctor_app/AllPatientReading/PrescribeDrugs.dart';
import 'package:doctor_app/Call_MessagePatient/SearchPatient.dart';
import 'package:doctor_app/components/vitals_reading_comp.dart';
import 'package:flutter/material.dart';

import '../Call_MessagePatient/Chat.dart';

class PatientReading extends StatefulWidget {
  PatientReading({super.key});

  @override
  State<PatientReading> createState() => _PatientReadingState();
}

class _PatientReadingState extends State<PatientReading>
    with SingleTickerProviderStateMixin {
  late final TabController _tabController =
      TabController(length: 2, vsync: this);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        leading: InkWell(
          onTap: () {
            Navigator.pop(context);
          },
          child: Container(
            padding: EdgeInsets.all(8),
            decoration: BoxDecoration(
              color: Color(0xffE5E5E5),
              shape: BoxShape.circle,
            ),
            child: Icon(Icons.arrow_back_ios_rounded,
                color: Color(0xff666666)),
          ),
        ),
        backgroundColor: Colors.white,
        title: Row(
          children: [
            Spacer(),
            Text('Patient Readings'),
            Spacer(),
          ],
        ),
      ),
      body: Stack(children: [
        Padding(
          padding: EdgeInsets.only(left: getFontSize(12, context), right: getFontSize(12, context), top: getFontSize(25, context)),
          child: Column(
            children: [
              Container(
                margin: EdgeInsets.only(bottom: getFontSize(18, context)),
                padding: EdgeInsets.all(16.0),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(12.0),
                  border: Border.all(width: getFontSize(0.7, context), color: Colors.black12),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(height: getFontSize(12.0, context)),
                    Row(
                      children: [
                        CircleAvatar(
                          backgroundImage: AssetImage('assets/images/guy.png'),
                          radius: 24.0,
                        ),
                        SizedBox(width: getFontSize(12.0, context)),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Salami Adebayo',
                              style: TextStyle(
                                fontSize: getFontSize(16.0, context),
                              ),
                            ),
                            SizedBox(height: getFontSize(4.0, context)),
                            Text(
                              '4:17pm · 12th Sept 2022',
                              style: TextStyle(
                                color: Colors.grey,
                                fontSize: getFontSize(12.0, context),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Column(children: [
                Container(
                  height: getFontSize(50, context),
                  padding: EdgeInsets.all(4),
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: Colors.grey[200],
                    borderRadius: BorderRadius.circular(50),
                  ),
                  child: TabBar(
                    dividerColor: Colors.transparent,
                    controller: _tabController,
                    indicatorSize: TabBarIndicatorSize.tab,
                    indicator: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(30),
                    ),
                    labelColor: Colors.black,
                    unselectedLabelColor: Color(0xff4F4F4F),
                    tabs: [
                      Tab(text: "Vital readings"),
                      Tab(text: "Drug compliance"),
                    ],
                  ),
                ),
                SizedBox(
                  height: getFontSize(20, context),
                ),
              ]),
              SizedBox(height: getFontSize(10, context)),
              Flexible(
                child: TabBarView(
                  controller: _tabController,
                  children: [
                    vital_reading(),
                    drug_compliance(),
                  ],
                ),
              ),
            ],
          ),
        ),
        DraggableScrollableSheet(
            initialChildSize: 0.1, // Default height (collapsed state)
            minChildSize: 0.1, // Minimum height
            maxChildSize: 0.3, // Maximum height
            builder: (context, scrollController) {
              return Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(20),
                    topRight: Radius.circular(20),
                  ),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black26,
                      blurRadius: 10,
                      offset: Offset(0, -2),
                    ),
                  ],
                ),
                child: Column(
                  children: [
                    SizedBox(height: getFontSize(10, context)),
                    Container(
                      width: getFontSize(50, context),
                      height: getFontSize(5, context),
                      decoration: BoxDecoration(
                        color: Colors.grey[300],
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                    SizedBox(height: getFontSize(10, context)),
                    Expanded(
                      child: ListView(
                        controller: scrollController,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              GestureDetector(
                                onTap: () {
                                  Navigator.of(context).push(MaterialPageRoute(
                                      builder: (builder) => Searchpatient()));
                                },
                                child: _actionButton(
                                  icon: Icons.phone,
                                  label: 'Call patient',
                                  color: Colors.blue,
                                ),
                              ),
                              GestureDetector(
                                onTap: () {
                                  Navigator.of(context).push(MaterialPageRoute(
                                      builder: (builder) => PrescribeDrugs()));
                                },
                                child: _actionButton(
                                  icon: Icons.medical_services,
                                  label: 'Prescribe drugs',
                                  color: Colors.blue,
                                ),
                              ),
                              GestureDetector(
                                onTap: () {
                                  Navigator.of(context).push(MaterialPageRoute(
                                      builder: (builder) => Chat()));
                                },
                                child: _actionButton(
                                  icon: Icons.message,
                                  label: 'Message patient',
                                  color: Colors.blue,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              );
            })
      ]),
    );
  }

  Widget _actionButton(
      {required IconData icon, required String label, required Color color}) {
    return Column(
      children: [
        CircleAvatar(
          radius: 30,
          backgroundColor: color.withOpacity(0.1),
          child: Icon(
            icon,
            color: color,
            size: getFontSize(30, context),
          ),
        ),
        SizedBox(height: getFontSize(8, context)),
        Text(
          label,
          style: TextStyle(fontSize: getFontSize(12, context)),
        ),
      ],
    );
  }
}

Widget vital_reading() {
  return Expanded(
      child: SingleChildScrollView(
          child: Column(
    children: [
      vitals_reading_comp(
          name: 'Blood Pressure',
          deviceName: 'Wellue BP2 connect',
          reading: '90/60 mmHg',
          timestamp: '12/09/2022',
          datestamp: '12:08AM',
          iconPath: 'assets/images/bpicon.svg',
          color: Color(0xffA64FFE)),
      vitals_reading_comp(
          name: 'Stress (HRV rate)',
          deviceName: 'Wellue BP2 connect',
          reading: '50 milliseconds',
          timestamp: '12/09/2022',
          datestamp: '12:08AM',
          iconPath: 'assets/images/hrvicon.svg',
          color: Color(0xffFF6161)),
      vitals_reading_comp(
          name: 'Oxygen Saturation',
          deviceName: 'Stress (HRV rate)',
          reading: '95 %',
          timestamp: '12/09/2022',
          datestamp: '12:08AM',
          iconPath: 'assets/images/osicon.svg',
          color: Color(0xff2C68BF)),
      vitals_reading_comp(
          name: 'Lipids',
          deviceName: 'Stress (HRV rate)',
          reading: '100 mg/DL',
          timestamp: '12/09/2022',
          datestamp: '12:08AM',
          iconPath: 'assets/images/lipidicon.svg',
          color: Color(0xff1C9A9A)),
      vitals_reading_comp(
        deviceName: 'Wellue BP2 connect',
        name: 'Heart rate (ECG)',
        reading: '77 bpm',
        timestamp: '12:08AM',
        datestamp: '12/09/2022',
        iconPath: 'assets/images/hearticon.svg',
        color: Color(0xffFF4E86),
      ),
      vitals_reading_comp(
        deviceName: 'Wellue BP2 connect',
        name: 'Blood glucose',
        reading: '70-80 mg/DL',
        timestamp: '12:08AM',
        datestamp: '12/09/2022',
        iconPath: 'assets/images/glucoseicon.svg',
        color: Color(0xff158CFF),
      ),
      vitals_reading_comp(
        deviceName: 'Wellue BP2 connect',
        name: 'IHRA',
        reading: '5.7%',
        timestamp: '12:08AM',
        datestamp: '12/09/2022',
        iconPath: 'assets/images/ihraicon.svg',
        color: Color(0xff1CA757),
      ),
      vitals_reading_comp(
        deviceName: 'Wellue BP2 connect',
        name: 'Body temperature',
        reading: '37.0°',
        timestamp: '12:08AM',
        datestamp: '12/09/2022',
        iconPath: 'assets/images/tempicon.svg',
        color: Color(0xffFF754E),
      ),
      vitals_reading_comp(
        deviceName: 'Wellue BP2 connect',
        name: 'Uric Acid',
        reading: '5.3 mg/DL',
        timestamp: '12:08AM',
        datestamp: '12/09/2022',
        iconPath: 'assets/images/uricacidicon.svg',
        color: Color(0xff1C9A9A),
      ),
      vitals_reading_comp(
        deviceName: 'Wellue BP2 connect',
        name: 'Respiratory rate',
        reading: '16 bpm',
        timestamp: '12:08AM',
        datestamp: '12/09/2022',
        iconPath: 'assets/images/respiratoryicon.svg',
        color: Color(0xff805FFF),
      )
    ],
  )));
}

Widget drug_compliance() {
  return DrugCompliance();
}