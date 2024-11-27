import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

void main() {
  runApp(const PersonalHistoryRecords());
}

class PersonalHistoryRecords extends StatefulWidget {
  const PersonalHistoryRecords({super.key});
  @override
  _PersonalHistoryRecordsState createState() => _PersonalHistoryRecordsState();
}

class _PersonalHistoryRecordsState extends State<PersonalHistoryRecords> {
  String? _selectedValue;

  @override
  Widget build(BuildContext context) {
    int index = 0;
    List<String> conditions = [];
    // List<String> conditions = ["Hypertension", "Diabetes", "Ucler"];
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
                    'Personal History Records',
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
                const SizedBox(height: 30),
                SvgPicture.asset('assets/images/cuate.svg'),
                const SizedBox(height: 30),
                Container(
                  alignment: Alignment.center,
                  width: MediaQuery.of(context).size.width * 0.78,
                  child: const Align(
                    child: Text(
                      "If you have any previous or current health condition, you can add them here.",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 14,
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 15,
                ),
                SizedBox(
                  width: 200,
                  child: ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.blue,
                      fixedSize:
                          Size.fromWidth(MediaQuery.of(context).size.width),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(9),
                      ),
                    ),
                    child: const Padding(
                      padding: EdgeInsets.symmetric(
                          vertical: 12.0, horizontal: 24.0),
                      child: Text(
                        'Add a condition',
                        style: TextStyle(color: Colors.white, fontSize: 16),
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 75,
                ),
                conditions.isEmpty
                    ? nothing()
                    : ListView(
                        children: List.generate(conditions.length, (index) {
                          String text = conditions[index];
                          return Text(
                            text,
                            style: const TextStyle(fontSize: 16),
                          );
                        }),
                      ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  nothing() {
    return DottedBorder(
      color: Colors.grey.withOpacity(0.70),
      radius: const Radius.circular(19),
      dashPattern: const [8, 6],
      borderType: BorderType.RRect,
      strokeWidth: 2,
      child: Container(
        width: 342,
        height: 206,
        decoration: BoxDecoration(color: Colors.grey.withOpacity(0.10)),
        child: Column(
          children: [
            const Spacer(),
            SvgPicture.asset('assets/images/box.svg'),
            const SizedBox(
              height: 20,
            ),
            Text(
              'No medical conditions added.',
              style: TextStyle(
                  fontSize: 16, color: Colors.black.withOpacity(0.40)),
            ),
            const Spacer(),
          ],
        ),
      ),
    );
  }
}
