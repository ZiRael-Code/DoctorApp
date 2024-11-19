import 'package:flutter/material.dart';

class PrioritizedPatients extends StatefulWidget {
  const PrioritizedPatients({super.key});

  @override
  State<PrioritizedPatients> createState() => _PrioritizedPatientsState();
}

class _PrioritizedPatientsState extends State<PrioritizedPatients> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 25),
        child: Column(
          children: [
            const SizedBox(height: 40),
            Row(
              children: [
                Container(
                  height: 45,
                  width: 45,
                  decoration: BoxDecoration(
                    color: Colors.grey.shade300,
                    shape: BoxShape.circle,
                  ),
                  child: const Icon(Icons.arrow_back),
                ),
                const SizedBox(width: 60),
                const Center(
                  child: Text(
                    "Prioritized patients",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    ));
  }
}
