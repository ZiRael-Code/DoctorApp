import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

void main() {
  runApp(const CustomerCareOption());
}

class CustomerCareOption extends StatefulWidget {
  const CustomerCareOption({super.key});
  @override
  _AppointmentPaymentScreen createState() => _AppointmentPaymentScreen();
}

class _AppointmentPaymentScreen extends State<CustomerCareOption> {
  String? _selectedValue;

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
                  'Customer Care',
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
        padding: const EdgeInsets.only(left: 15, right: 15),
        child: Column(children: [
          careOption(
              careName: const Row(
                children: [
                  Text(
                    'Engage chatbot',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Spacer(),
                  // Blue forward arrow icon
                  Icon(
                    Icons.arrow_forward_ios,
                    color: Colors.blue,
                  ),
                ],
              ),
              careImgPath: "assets/images/careimgage.svg",
              description:
                  "Talk with an automated responder to help you sort any little issues you may have with myvitalz."),
          const SizedBox(
            height: 20,
          ),
          careOption(
              careName: const Row(
                children: [
                  Text(
                    'Send Mail',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Spacer(),
                  // Blue forward arrow icon
                  Icon(
                    Icons.arrow_forward_ios,
                    color: Colors.blue,
                  ),
                ],
              ),
              careImgPath: "assets/images/email.svg",
              description:
                  "Send an email to our official email address myvitalzsupport@myvitalz.com if you need to communicate with us."),
          const SizedBox(
            height: 20,
          ),
          careOption(
              careName: const Row(
                children: [
                  Text(
                    'Hotline',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Spacer(),
                  // Blue forward arrow icon
                  Icon(
                    Icons.arrow_forward_ios,
                    color: Colors.blue,
                  ),
                ],
              ),
              careImgPath: "assets/images/phone.svg",
              description:
                  "You can call us directly on phone if you have pressing issues you need to fix."),
        ]),
      ),
    ));
  }

  careOption({required careName, required careImgPath, required description}) {
    // Column with text and row
    return Container(
      height: 137,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        border: Border.all(color: const Color(0xFFE5E5E5), width: 1),
      ),
      padding: const EdgeInsets.all(16.0),
      child: Row(
        children: [
          // Circular container
          Container(
            width: 59,
            height: 59,
            padding: const EdgeInsets.all(14),
            decoration: const BoxDecoration(
              color: Color(0xFFE2EDFF),
              shape: BoxShape.circle,
            ),
            child: SvgPicture.asset(careImgPath),
          ),
          const SizedBox(width: 16),

          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                careName,
                const SizedBox(height: 15),
                Container(
                  padding: const EdgeInsets.only(right: 30),
                  child: Text(
                    description,
                    style: const TextStyle(
                      color: Color(0xFF2E2E42),
                      fontSize: 12,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
