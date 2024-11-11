import 'package:doctor_app/MainScreenSection/Dashboard.dart';
import 'package:doctor_app/onboarding/set_appointment_times.dart';
import 'package:doctor_app/onboarding/set_appointment_times2.dart';
import 'package:doctor_app/onboarding/upload_id_card.dart';
import 'package:doctor_app/onboarding/verify_identity.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}
// this is israel on main.dart

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Doctor App',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const SetAppointmentTimes2(),
    );
  }
}
