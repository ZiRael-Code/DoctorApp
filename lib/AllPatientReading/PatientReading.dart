import 'package:flutter/material.dart';

class PatientReading extends StatefulWidget {
  const PatientReading({super.key});

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
            padding: const EdgeInsets.all(8),
            decoration: const BoxDecoration(
              color: Color(0xffE5E5E5),
              shape: BoxShape.circle,
            ),
            child: const Icon(Icons.arrow_back_ios_rounded,
                color: Color(0xff666666)),
          ),
        ),
        backgroundColor: Colors.white,
        title: const Row(
          children: [
            Spacer(),
            Text('Patient Readings'),
            Spacer(),
          ],
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 12, right: 12, top: 25),
        child: Column(
          children: [
            Container(
              margin: const EdgeInsets.only(bottom: 18),
              padding: const EdgeInsets.all(16.0),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(12.0),
                border: Border.all(width: 0.7, color: Colors.black12),
              ),
              child: const Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: 12.0),
                  Row(
                    children: [
                      CircleAvatar(
                        backgroundImage: AssetImage('assets/images/guy.png'),
                        radius: 24.0,
                      ),
                      SizedBox(width: 12.0),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Salami Adebayo',
                            style: TextStyle(
                              fontSize: 16.0,
                            ),
                          ),
                          SizedBox(height: 4.0),
                          Text(
                            '4:17pm · 12th Sept 2022',
                            style: TextStyle(
                              color: Colors.grey,
                              fontSize: 12.0,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Container(
              height: 50,
              padding: const EdgeInsets.all(4),
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
                unselectedLabelColor: const Color(0xff4F4F4F),
                tabs: const [
                  Tab(text: "Vital readings"),
                  Tab(text: "Drug compliance"),
                ],
              ),
            ),
            const SizedBox(height: 10),
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
    );
  }

  Widget vital_reading() {
    return const Center(child: Text('Vital Readings'));
  }

  Widget drug_compliance() {
    return const Center(child: Text('Drug Compliance'));
  }
}
