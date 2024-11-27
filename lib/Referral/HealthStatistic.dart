import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

void main() {
  runApp(const HealthStatic());
}

class HealthStatic extends StatefulWidget {
  const HealthStatic({super.key});
  @override
  _AppointmentPaymentScreen createState() => _AppointmentPaymentScreen();
}

class _AppointmentPaymentScreen extends State<HealthStatic>
    with SingleTickerProviderStateMixin {
  String? _selectedValue;
  late final TabController _tabController = TabController(length: 2, vsync: this);
  int selectedIndex = 0; // Track which tab is selected
  final List<String> tabLabels = [
    "Blood Pressure",
    "Heart Rate",
    "Blood Group"
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Row(
            children: [
              GestureDetector(
                onTap: () => Navigator.pop(context),
                child: Container(
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
              ),
              const Spacer(),
              Container(
                alignment: Alignment.center,
                child: const Center(
                  child: Text(
                    'Health statistics',
                    style: TextStyle(fontSize: 20, fontStyle: FontStyle.normal),
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
            child: Column(
              children: [
                const SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      height: 23,
                      width: 23,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.blue.withOpacity(0.20),
                      ),
                      child: const Center(
                        child: Icon(
                          Icons.arrow_back_ios,
                          color: Colors.blue,
                          size: 15,
                        ),
                      ),
                    ),
                    const SizedBox(
                      width: 8,
                    ),
                    const Text(
                      'August',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(
                      width: 8,
                    ),
                    Container(
                      height: 23,
                      width: 23,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.blue.withOpacity(0.20),
                      ),
                      child: const Center(
                        child: Icon(
                          Icons.arrow_forward_ios_rounded,
                          color: Colors.blue,
                          size: 15,
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: List.generate(tabLabels.length, (index) {
                      bool isSelected = selectedIndex == index;
                      return Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 8.0),
                        child: GestureDetector(
                          onTap: () {
                            setState(() {
                              selectedIndex =
                                  index; // Update the selected index
                            });
                          },
                          child: Container(
                            width: 161,
                            height: 54,
                            decoration: BoxDecoration(
                              color:
                                  isSelected ? Colors.blue : Colors.transparent,
                              border: Border.all(
                                color: isSelected
                                    ? Colors.transparent
                                    : Colors.blue,
                                width: 1,
                              ),
                              borderRadius: BorderRadius.circular(12),
                            ),
                            alignment: Alignment.center,
                            child: Text(
                              tabLabels[index],
                              style: TextStyle(
                                color: isSelected ? Colors.white : Colors.blue,
                                fontSize: 16,
                              ),
                            ),
                          ),
                        ),
                      );
                    }),
                  ),
                ),

                const SizedBox(
                    height: 20), // Add space between tabs and content

                // Content Body based on selected tab
                Expanded(
                  child: IndexedStack(
                    index: selectedIndex,
                    children: [
                      Center(child: bloodPressure()),
                      Center(child: hearthRate()),
                      Center(child: bloodPressure()),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  bloodPressure() {
    return Column(
      children: [
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
      ],
    );
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
}

hearthRate() {}