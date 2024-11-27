import 'package:doctor_app/Referral/BlogAndAticles.dart';
import 'package:doctor_app/Referral/CreditDebitCard.dart';
import 'package:doctor_app/Referral/CustomerCareOption.dart';
import 'package:doctor_app/Referral/DeviceOrder.dart';
import 'package:doctor_app/Referral/DeviceOwned.dart';
import 'package:doctor_app/Referral/FundWallet.dart';
import 'package:doctor_app/Referral/HealthStatistic.dart';
import 'package:doctor_app/Referral/HowItWorks.dart';
import 'package:doctor_app/Referral/PersonalHistoryRecords.dart';
import 'package:doctor_app/Referral/PinSettings.dart';
import 'package:doctor_app/Referral/Referral.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class Account extends StatefulWidget {
  const Account({super.key});

  @override
  State<Account> createState() => _AccountState();
}

class _AccountState extends State<Account> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: const Color(0xffF2F2F2),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                  padding: const EdgeInsets.only(left: 20, right: 20),
                  height: 250,
                  width: double.infinity,
                  decoration: const BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(20),
                          bottomRight: Radius.circular(20))),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        'Account',
                        style: TextStyle(
                          fontSize: 26,
                          fontWeight: FontWeight.bold,
                          color: Color(0xFF2E2E42),
                        ),
                      ),
                      Container(
                        height: 117,
                        width: double.infinity,
                        padding: const EdgeInsets.all(16),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12),
                          border: Border.all(
                            color: const Color(0x0D000000),
                          ),
                        ),
                        child: Row(
                          children: [
                            // ClipOval for round image
                            ClipOval(
                              child: Image.asset(
                                'assets/images/rema.png',
                                height: 60,
                                width: 60,
                                fit: BoxFit.cover,
                              ),
                            ),
                            const SizedBox(width: 16),
                            const Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Row(
                                  children: [
                                    Text(
                                      'Sanni Muiz . ',
                                      style: TextStyle(
                                        fontSize: 20,
                                        fontWeight: FontWeight.bold,
                                        color: Color(0xFF2E2E42), // Text color
                                      ),
                                    ),
                                    Text(
                                      "Doctor",
                                      style: TextStyle(
                                          color: Colors.black12, fontSize: 16),
                                    )
                                  ],
                                ),

                                SizedBox(height: 8),
                                // Spacing between the two texts
                                Text(
                                  'johndoe@gmail.com', // Email text
                                  style: TextStyle(
                                    fontSize: 14,
                                    color: Colors
                                        .blue, // Blue color for the email text
                                  ),
                                ),
                              ],
                            ),
                            const Spacer(),
                            Align(
                              alignment: Alignment.topRight,
                              child: Container(
                                alignment: Alignment.topRight,
                                width: 27,
                                height: 27,
                                decoration: const BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: Colors.blue, // Blue background
                                ),
                                child: const Center(
                                  child: Icon(
                                    Icons.edit, // Write (edit) icon
                                    color: Colors.white, // White icon color
                                    size: 16, // Adjust the size as needed
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(
                        height: 30,
                      ),
                    ],
                  )),
              Container(
                padding: const EdgeInsets.only(left: 20),
                alignment: Alignment.centerLeft,
                margin: const EdgeInsets.only(bottom: 20, top: 20),
                child: const Text(
                  'Personal Details',
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),
              ),
              Container(
                  padding: const EdgeInsets.only(top: 20, left: 20, right: 20),
                  height: 345,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Column(children: [
                    details(
                        icon: Icons.person,
                        detailType: "Name",
                        detailInfo: "Sanni Muiz Dolapo",
                        shouldLine: true),
                    details(
                        icon: Icons.phone,
                        detailType: "Phone Number",
                        detailInfo: "081112223344",
                        shouldLine: true),
                    details(
                        icon: Icons.email,
                        detailType: "Email Address",
                        detailInfo: "johndoe@gmail.com",
                        shouldLine: true),
                    details(
                        icon: Icons.male,
                        detailType: "Email Address",
                        detailInfo: "johndoe@gmail.com",
                        shouldLine: true),
                  ])),
              Container(
                padding: const EdgeInsets.only(left: 20),
                alignment: Alignment.centerLeft,
                margin: const EdgeInsets.only(bottom: 20, top: 20),
                child: const Text(
                  'Referrals',
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),
              ),
              Container(
                padding: const EdgeInsets.only(
                    top: 20, left: 20, right: 20, bottom: 10),
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(20),
                ),
                child: GestureDetector(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const Referrals()));
                  },
                  child: detailsNoCol(
                      icon: Icons.link,
                      detailInfo: "Refer someone",
                      shouldLine: false),
                ),
              ),
              Container(
                padding: const EdgeInsets.only(left: 20),
                alignment: Alignment.centerLeft,
                margin: const EdgeInsets.only(bottom: 20, top: 20),
                child: const Text(
                  'Payments',
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),
              ),
              Container(
                padding: const EdgeInsets.only(
                    top: 20, left: 20, right: 20, bottom: 10),
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Column(
                  children: [
                    GestureDetector(
                      onTap: () => Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                              builder: (context) => FundWallet())),
                      child: detailsNoCol(
                          icon: Icons.wallet_outlined,
                          detailInfo: "Wallet",
                          shouldLine: true),
                    ),
                    const SizedBox(
                      height: 25,
                    ),
                    GestureDetector(
                      onTap: () => Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                              builder: (context) => CreditDebitCard())),
                      child: detailsNoCol(
                          icon: Icons.credit_card,
                          detailInfo: "Credit/Debit Cards ",
                          shouldLine: true),
                    ),
                    const SizedBox(
                      height: 25,
                    ),
                    GestureDetector(
                      onTap: () => Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const PinSettings())),
                      child: detailsNoCol(
                          icon: Icons.lock,
                          detailInfo: "PIN settings",
                          shouldLine: false),
                    )
                  ],
                ),
              ),
              Container(
                padding: const EdgeInsets.only(left: 20),
                alignment: Alignment.centerLeft,
                margin: const EdgeInsets.only(bottom: 20, top: 20),
                child: const Text(
                  'Health history',
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),
              ),
              Container(
                  padding: const EdgeInsets.only(
                      top: 20, left: 20, right: 20, bottom: 10),
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Column(children: [
                    GestureDetector(
                      onTap: () => Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                              builder: (context) =>
                                  const PersonalHistoryRecords())),
                      child: detailsNoCol(
                          icon: Icons.person,
                          detailInfo: "Personal history records",
                          shouldLine: true),
                    ),
                    const SizedBox(
                      height: 25,
                    ),
                    GestureDetector(
                      onTap: () => Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const HealthStatic())),
                      child: detailsNoCol(
                          icon: Icons.network_cell,
                          detailInfo: "Health statistics (in-app)",
                          shouldLine: false),
                    )
                  ])),
              Container(
                padding: const EdgeInsets.only(left: 20),
                alignment: Alignment.centerLeft,
                margin: const EdgeInsets.only(bottom: 20, top: 20),
                child: const Text(
                  'Device',
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),
              ),
              Container(
                  padding: const EdgeInsets.only(
                      top: 20, left: 20, right: 20, bottom: 10),
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Column(children: [
                    GestureDetector(
                      onTap: () => Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const DeviceOwned())),
                      child: detailsNoCol(
                          icon: Icons.person,
                          detailInfo: "Devices owned",
                          shouldLine: true),
                    ),
                    const SizedBox(
                      height: 25,
                    ),
                    GestureDetector(
                      onTap: () => Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const DeviceOrder())),
                      child: detailsNoCol(
                          icon: Icons.receipt_long_outlined,
                          detailInfo: "Device Orders",
                          shouldLine: false),
                    )
                  ])),
              Container(
                padding: const EdgeInsets.only(left: 20),
                alignment: Alignment.centerLeft,
                margin: const EdgeInsets.only(bottom: 20, top: 20),
                child: const Text(
                  'Help and support',
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),
              ),
              Container(
                  padding: const EdgeInsets.only(
                      top: 20, left: 20, right: 20, bottom: 10),
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Column(children: [
                    GestureDetector(
                      onTap: () => Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                              builder: (context) =>
                                  const CustomerCareOption())),
                      child: detailsNoCol(
                          icon: Icons.headset_mic_outlined,
                          detailInfo: "Customer care",
                          shouldLine: true),
                    ),
                    const SizedBox(
                      height: 25,
                    ),
                    GestureDetector(
                      onTap: () => Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const DeviceOwned())),
                      child: detailsNoCol(
                          icon: Icons.question_mark,
                          detailInfo: "Device Orders",
                          shouldLine: true),
                    ),
                    const SizedBox(
                      height: 25,
                    ),
                    GestureDetector(
                      onTap: () => Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const BlogAndAticles())),
                      child: detailsNoCol(
                          icon: Icons.receipt,
                          detailInfo: "Blogs & articles",
                          shouldLine: true),
                    ),
                    const SizedBox(
                      height: 25,
                    ),
                    GestureDetector(
                      onTap: () => Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const HowItWorks())),
                      child: detailsNoCol(
                          icon: Icons.search,
                          detailInfo: "How it works",
                          shouldLine: false),
                    ),
                  ])),
              const SizedBox(
                height: 20,
              ),
              Container(
                padding: const EdgeInsets.only(left: 20, right: 20, top: 20),
                height: 90,
                width: double.infinity,
                decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(20),
                        topRight: Radius.circular(20))),
                child: detailsNoCol(
                    icon: Icons.exit_to_app,
                    detailInfo: "Logout",
                    shouldLine: false,
                    lol: "true"),
              ),
              const SizedBox(
                height: 20,
              )
            ],
          ),
        ),
      ),
    );
  }

  details(
      {required IconData icon,
      required String detailType,
      required String detailInfo,
      required bool shouldLine}) {
    return Column(children: [
      Row(
        children: [
          Container(
              width: 41,
              height: 41,
              decoration: const BoxDecoration(
                color: Color(0xffE2EDFF),
                shape: BoxShape.circle,
              ),
              child: Center(
                child: Icon(icon, size: 28, color: Colors.blue),
              )),
          const SizedBox(
            width: 10,
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                detailType,
                style: const TextStyle(color: Colors.grey, fontSize: 14),
              ),
              const SizedBox(
                height: 10,
              ),
              Text(detailInfo,
                  style: const TextStyle(color: Colors.black, fontSize: 18))
            ],
          )
        ],
      ),
      const SizedBox(height: 10),
      SvgPicture.asset(shouldLine == true ? "assets/images/line.svg" : ""),
      const SizedBox(height: 15),
    ]);
  }

  detailsNoCol(
      {required IconData icon,
      required String detailInfo,
      required bool shouldLine,
      lol}) {
    return Column(children: [
      Row(
        children: [
          Container(
              width: 41,
              height: 41,
              decoration: BoxDecoration(
                color: lol == null
                    ? const Color(0xffE2EDFF)
                    : Colors.red.withOpacity(0.05),
                shape: BoxShape.circle,
              ),
              child: Center(
                child: Icon(icon,
                    size: 28, color: lol == null ? Colors.blue : Colors.red),
              )),
          const SizedBox(
            width: 10,
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(detailInfo,
                  style: TextStyle(
                      color: lol == null ? Colors.black : Colors.red,
                      fontSize: 18,
                      fontWeight:
                          lol == null ? FontWeight.normal : FontWeight.bold))
            ],
          )
        ],
      ),
      const SizedBox(height: 10),
      SvgPicture.asset(shouldLine == true ? "assets/images/line.svg" : ""),
    ]);
  }
}
