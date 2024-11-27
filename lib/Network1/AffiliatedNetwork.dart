import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';


void main(){
  runApp(const AppointmentPayment());
}

class AppointmentPayment extends StatefulWidget {
  const AppointmentPayment({super.key});
  @override
  _AppointmentPaymentScreen createState() => _AppointmentPaymentScreen();
}

class _AppointmentPaymentScreen extends  State<AppointmentPayment> with SingleTickerProviderStateMixin {
  late final TabController _tabController = TabController(length: 3, vsync: this);

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
                child: SvgPicture.asset('assets/images/back.svg',
                  width: 8.0,
                  height: 15,),
              ),
              const Spacer(),
              Container(
                alignment: Alignment.center,
                child:
                const Center(child: Text(
                  'Affiliated Network',
                  style: TextStyle(
                      fontSize: 20,
                      fontStyle: FontStyle.normal
                  ),
                ),
                ),
              ),
              const Spacer(),

            ],
          ),
          centerTitle: true,
        ),
        body:
        Container(
          padding: const EdgeInsets.only(bottom: 30, left: 15, right: 15),
          child: Align(
            child: Column(
              children: [
                const SizedBox(height: 40),
                Container(
                  height: 50,
                  padding: const EdgeInsets.all(4),
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: const Color(0xffE0E0E0),
                    borderRadius: BorderRadius.circular(50),
                  ),
                  child: SizedBox(
                    child: TabBar(
                      controller: _tabController,
                      indicatorSize: TabBarIndicatorSize.tab,
                      indicator: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(30),
                      ),
                      indicatorColor: Colors.transparent, // Removes the default bottom underline
                      labelColor: Colors.black,
                      unselectedLabelColor: const Color(0xff4F4F4F),
                      tabs: const [
                        Tab(text: "Specialists"),
                        Tab(text: "Pharmacies"),
                        Tab(text: "Hospitals"),
                      ],
                    ),
                  ),
                ),
                const SizedBox(height: 10),
                Expanded(
                  child: TabBarView(
                    controller: _tabController,
                    children: [
                      Center(child: specialists()),
                      Center(child: pharmacies()),
                      Center(child: hospitals()),
                    ],
                  ),
                ),
              ],
    ),
    ))));
  }

  specialists() {
    return Column(
      children: [
        const SizedBox(height: 20),

    specialist(
      image: "assets/images/doc1.png",
      name: "Dr. John Doe",
      specialization: "Cardiologist surgeon",
      workingType: "Freelance specialist",
    ),
    specialist(
      image: "assets/images/doc.png",
      name: "Dr. Nelson Yang",
      specialization: "Design Doctor",
      workingType: "Walls and Gates hospital",
    ),
    specialist(
          image: "assets/images/doc1.png",
          name: "Dr. John Doe",
          specialization: "Cardiologist surgeon",
          workingType: "Freelance specialist",
    ),
    ]
    );

  }

  pharmacies() {
    return Column(
      children: [
    pharmacist(
      image: "assets/images/pharm1.jpeg",
      name: "RX Pharmacy",
      type: "Pharmacy",
    ),
    pharmacist(
      image: "assets/images/pharm2.jpeg",
      name: "RX Pharmacy",
      type: "Pharmacy",
    ),
    ]
    );
  }

  hospitals() {
    return Column(
      children: [
    hospital(
      image: "assets/images/host1.png",
      name: "New Life Medical Hospital Centre",
      type: "Hospital",
    ),

     hospital(
      image: "assets/images/host1.png",
      name: "Tripple J",
      type: "Health Clinic",
    ),

        hospital(
      image: "assets/images/host1.png",
      name: "Koboko Hospital",
      type: "Healthcare center",
    ),
    ]
    );
  }


  specialist({required String image,
    required String name,
    required String specialization,
    required String workingType})
  {
    return Container(
      child: Column(
        children: [
          Row(
            children: [
              Align(
                alignment: Alignment.topCenter,
                child: SizedBox(
                  // margin: EdgeInsets.only(bottom: 50),
                  height: 44,
                  width: 44,
                  child: CircleAvatar(
                    radius: 22,
                    backgroundImage: AssetImage(image),
                    backgroundColor: Colors.transparent,
                  ),
                ),
              ),
              const SizedBox(width: 12),
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(name, style: const TextStyle(
                      fontSize: 18,
                      color: Colors.black
                  ),),
                  const SizedBox(height: 5,),
                  Text("$specialization . $workingType", style: TextStyle(
                      fontSize: 12,
                      color: Colors.grey.withOpacity(0.90)
                  ),),
                ],
              )

            ],
          ),
          const SizedBox(height: 15,),
          SvgPicture.asset('assets/images/line.svg'),
          const SizedBox(height: 15,),
        ],
      ),
    );
  }


  pharmacist({required String image,
    required String name,
    required String type})
  {
    return Container(
      child: Column(
        children: [
          Row(
            children: [
              Align(
                alignment: Alignment.topCenter,
                child: SizedBox(
                  // margin: EdgeInsets.only(bottom: 50),
                  height: 44,
                  width: 44,
                  child: CircleAvatar(
                    radius: 22,
                    backgroundImage: AssetImage(image),
                    backgroundColor: Colors.transparent,
                  ),
                ),
              ),
              const SizedBox(width: 12),
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(name, style: const TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Colors.black
                  ),),
                  const SizedBox(height: 5,),
                  Text(type, style: TextStyle(
                      fontSize: 12,
                      color: Colors.grey.withOpacity(0.90)
                  ),),
                ],
              )

            ],
          ),
          const SizedBox(height: 15,),
          SvgPicture.asset('assets/images/line.svg'),
          const SizedBox(height: 15,),
        ],
      ),
    );
  }

  hospital({required String image,
    required String name,
    required String type})
  {
    return Container(
      child: Column(
        children: [
          Row(
            children: [
              Align(
                alignment: Alignment.topCenter,
                child: SizedBox(
                  // margin: EdgeInsets.only(bottom: 50),
                  height: 44,
                  width: 44,
                  child: CircleAvatar(
                    radius: 22,
                    backgroundImage: AssetImage(image),
                    backgroundColor: Colors.transparent,
                  ),
                ),
              ),
              const SizedBox(width: 12),
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(name, style: const TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Colors.black
                  ),),
                  const SizedBox(height: 5,),
                  Text(type, style: TextStyle(
                      fontSize: 12,
                      color: Colors.grey.withOpacity(0.90)
                  ),),
                ],
              )

            ],
          ),
          const SizedBox(height: 15,),
          SvgPicture.asset('assets/images/line.svg'),
          const SizedBox(height: 15,),
        ],
      ),
    );
}
}