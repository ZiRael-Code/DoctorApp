import 'package:doctor_app/AllPatientReading/PatientReading.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../Network1/PersonalMinistore.dart';

class Dashboard extends StatefulWidget {
  const Dashboard({super.key});

  @override
  State<Dashboard> createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  List<Map<String, dynamic>> show_notification = [
    {
      'icon': Icon(
        Icons.message,
        color: Colors.blue,
      ),
      'text': "You have a new message from Alexander..."
    },
    {
      'icon': Icon(
        Icons.local_pharmacy,
        color: Colors.blue,
      ),
      'text': 'Your malaria drugs have been exhausted',
    },
    {
      'icon': Icon(Icons.devices, color: Colors.blue),
      'text': 'Your device is ready for pickup',
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Row(
          children: [
            SizedBox(
              width: 50.0,
              height: 50.0,
              child: GestureDetector(
                  // onTap: (){
                  //   Navigator.push(context, MaterialPageRoute(builder:
                  //       (context) => AccountProfileState()));
                  // },
                  child: CircleAvatar(
                radius: 50,
                backgroundImage: AssetImage('assets/images/dr.png'),
              )),
            ),
            const SizedBox(width: 10.0),
            const Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Good morning",
                  style: TextStyle(
                    fontSize: 15.0,
                  ),
                ),
                Text(
                  "Sanni Muiz",
                  style: TextStyle(
                    fontSize: 25.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
            const Spacer(),
            GestureDetector(child: SvgPicture.asset('ass')
                // onTap: (){
                //   Navigator.push(context, MaterialPageRoute(builder:
                //       (context) => Community()));
                // },
                ),
            const SizedBox(
              width: 10,
            ),
            Icon(Icons.wallet_outlined),
            SizedBox(width: 10,),
            Align(
              alignment: Alignment.centerRight,
              child: GestureDetector(
                child: SvgPicture.asset(
                  'assets/images/notification.svg',
                  fit: BoxFit.contain,
                ),
                // onTap: (){
                //   Navigator.push(context, MaterialPageRoute(builder:
                //       (context) => Notifications()));
                // },
              ),
            ),
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
                padding: const EdgeInsets.all(14),
                child: Column(children: [
                  Column(
                    children: List.generate(
                      show_notification.length,
                      (index) {
                        Map<String, dynamic> nots = show_notification[index];
                        return notification(nots['icon'], nots['text']);
                      },
                    ),
                  ),
                  Row(
                    children: [
                      const Text(
                        "Patients readings",
                        style: TextStyle(
                          fontSize: 18.0,
                          fontWeight: FontWeight.w500,
                        ),
                        textAlign: TextAlign.left,
                      ),
                      const Spacer(),
                      TextButton(
                          onPressed: () {},
                          child: const Text('See all',
                              style: TextStyle(
                                color: Colors.blue,
                                fontSize: 16.0,
                              )))
                    ],
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        patiencte_reading(
                            name: 'Salami Adebayo',
                            path: 'assets/images/doc.png',
                            date: "12th Sept 2022",
                            time: "4:17pm",
                            bp: '90/60mmHg,',
                            hba1c: '42mmol/mol,',
                            ihra: '5.7% ...',
                            regularity: 'irregular',
                            regularityColor: const Color(0xffFF8E3C),
                            action: MaterialPageRoute(builder: (builder)=> PatientReading())
                        ),
                        patiencte_reading(
                            name: 'Salami Adebayo',
                            path: 'assets/images/man1.png',
                            date: "12th Sept 2022",
                            time: "4:17pm",
                            bp: '90/60mmHg,',
                            hba1c: '42mmol/mol,',
                            ihra: '5.7% ...',
                            regularity: 'irregular',
                            regularityColor: Color(0xffFF8E3C),
                            action: MaterialPageRoute(builder: (builder)=> PatientReading())
                        ),

                      ],
                    ),
                  ),
                  SizedBox(
                    height: 14,
                  ),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      "Network updates",
                      style: TextStyle(
                        fontSize: 18.0,
                        fontWeight: FontWeight.w500,
                      ),
                      textAlign: TextAlign.left,
                    ),
                  ),
                ])),
            Padding(
                padding: EdgeInsets.only(left: 5, right: 5),
                child: Container(
                  padding: EdgeInsets.only(left: 1.5, right: 1.5),
                  width: double.infinity,
                  decoration: BoxDecoration(color: Colors.grey[300]),
                  child: Column(
                    children: [
                      SizedBox(
                        height: 3,
                      ),
                      network_update(
                          network_name: "My Network",
                          profile_path: "assets/images/doc1.png",
                          name: "Rayoo Rayoo",
                          time: "11:20am",
                          date: "9th Sept 2022",
                          text:
                              "We have restocked our pharmacy and new drugs are now available for sale.",
                          imageList: [],
                          action: MaterialPageRoute(builder: (builder)=> Ministore())
                          ,context: context
                      ),
                      network_update(
                          network_name: "James’ Network",
                          profile_path: "assets/images/doc1.png",
                          name: "New Life Hospital",
                          time: "11:20am",
                          date: "9th Sept 2022",
                          text:
                              "We have new devices to measure vitals in stock.",
                          imageList: [
                            "assets/images/doc.png"],
                          action: MaterialPageRoute(builder: (builder)=> Ministore())
                          ,context: context
                      ),
                      network_update(
                          network_name: "My Network",
                          profile_path: "assets/images/doc1.png",
                          name: "Rayoo Rayoo",
                          time: "11:20am",
                          date: "9th Sept 2022",
                          text:
                          "We have restocked our pharmacy and new drugs are now available for sale.",
                          imageList: [],
                          action: MaterialPageRoute(builder: (builder)=> Ministore())
                          ,context: context

                      ),
                      network_update(
                          network_name: "My Network",
                          profile_path: "assets/images/doc1.png",
                          name: "Rayoo Rayoo",
                          time: "11:20am",
                          date: "9th Sept 2022",
                          text:
                          "We have restocked our pharmacy and new drugs are now available for sale.",
                          imageList: [
                            "assets/images/doc.png",
                            "assets/images/doc.png",
                            "assets/images/doc.png",
                            "assets/images/doc.png",
                            "assets/images/doc.png",
                            "assets/images/doc.png"
                          ],
                          action: MaterialPageRoute(builder: (builder)=> Ministore())
                          ,context: context
                      ),

                    ],
                  ),
                ))
          ],
        ),
      ),
    );
  }

  notification(Icon icon, String text) {
    return Container(
      margin: EdgeInsets.only(bottom: 10),
      padding: EdgeInsets.only(top: 19, bottom: 19, left: 12, right: 12),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12.0),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.2),
            spreadRadius: 2,
            blurRadius: 8,
            offset: const Offset(0, 4),
          ),
        ],
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Container(
            width: 35,
            height: 35,
            decoration:
                BoxDecoration(shape: BoxShape.circle, color: Color(0xffE2EDFF)),
            child: icon,
          ),
          Spacer(),
          Container(
            width: 229,
            child: Text(text,
                style: TextStyle(fontSize: 16.0, color: Colors.black45),
                overflow: TextOverflow.ellipsis),
          ),
          Spacer(),
          Icon(Icons.arrow_forward_ios_rounded, color: Colors.blue),
        ],
      ),
    );
  }

  patiencte_reading({
    required String name,
    required String path,
    required String date,
    required String bp,
    required String hba1c,
    required String ihra,
    required String regularity,
    required Color regularityColor,
    required String time,
    required MaterialPageRoute action,
  }) {
    return InkWell(
    onTap: () =>{
      Navigator.push(context, action)
    },
        child: Container(
      margin: EdgeInsets.only(right: 15),
      width: 320,
      padding: const EdgeInsets.all(16.0),
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(12.0),
          border: Border.all(width: 0.7, color: Colors.black12)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Label
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 4.0),
            decoration: BoxDecoration(
              color: regularityColor.withOpacity(0.15),
              borderRadius: BorderRadius.circular(8.0),
            ),
            child: Text(
              regularity,
              style: TextStyle(
                color: regularityColor,
                fontWeight: FontWeight.w400,
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
              SizedBox(width: 12.0),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    name,
                    style: const TextStyle(
                      fontWeight: FontWeight.w400,
                      fontSize: 18.0,
                    ),
                  ),
                  const SizedBox(height: 4.0),
                  Text(
                    time + ' · ' + date,
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
          SvgPicture.asset("assets/images/line.svg"),
          const SizedBox(height: 8.0),
          // Health Readings
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Text(
                    'BP: ',
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.blue,
                        fontSize: 12),
                  ),
                  Text(bp, style: TextStyle(fontSize: 12)),
                ],
              ),
              Row(
                children: [
                  Text(
                    'HbA1c: ',
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.blue,
                        fontSize: 12),
                  ),
                  Text(hba1c, style: TextStyle(fontSize: 12)),
                ],
              ),
              Row(
                children: [
                  Text(
                    'IHRA: ',
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.blue,
                        fontSize: 12),
                  ),
                  Text(ihra, style: TextStyle(fontSize: 12)),
                ],
              )
            ],
          ),
        ],
      ),
      ),
    );
  }

//


}
network_update({
  required String profile_path,
  required String name,
  required String network_name,
  required String date,
  required String time,
  required List<String> imageList,
  required String text,
  required MaterialPageRoute action,
  required BuildContext context
}) {
  int lenght = imageList.length;
  if (imageList.length > 4) {
    lenght = 4;
  }
  return GestureDetector(
    onTap: () => {
      Navigator.push(context, action)
    },
      child: Container(
    alignment: Alignment.center,
    margin: EdgeInsets.only(bottom: 15),
    decoration: BoxDecoration(color: Colors.white),
    padding: EdgeInsets.all(12),
    child: Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            SizedBox(
              width: 42,
              height: 42,
              child: CircleAvatar(
                radius: 50,
                backgroundImage: AssetImage(profile_path),
              ),
            ),
            SizedBox(
              width: 10,
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(children: [
                  Text(
                    name + " . ",
                    style: TextStyle(fontSize: 16),
                  ),
                  Text(
                    network_name,
                    style: TextStyle(color: Colors.blue),
                  )
                ]),
                Text(time + " . " + date,
                    style: TextStyle(color: Colors.black45))
              ],
            ),
            Spacer(),
            Icon(
              Icons.more_vert,
              color: Colors.black,
            )
          ],
        ),
        SizedBox(
          height: 20,
        ),
        Container(
          width: 285,
          child: Text(text, style: TextStyle(fontSize: 16)),
        ),
        SizedBox(
          height: 20,
        ),
        imageList.length == 1
            ? imageViewer(w: 326, h: 326, path: imageList[0], imageList: imageList, index: 0)
            : imageList.length > 1
            ? Wrap(
          direction: Axis.horizontal,
          children: List.generate(lenght, (index) {
            return imageViewer(
                w: 150, h: 150, path: imageList[index],
                imageList: imageList,
                index: index
            );
          }),
        )
            : SizedBox(height: 15,),
        SizedBox(height: 8,),
        Align(alignment: Alignment.center,
            child:
            Container(
                padding: EdgeInsets.all(12),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    border: Border.all(
                      color: Colors.grey.withOpacity(0.5),
                      width: 1,
                    ),
                    color: Color(0xffE2EDFF)),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text("View details", style: TextStyle(color: Colors.blue, fontSize: 16),),
                    Icon(Icons.arrow_forward, color: Colors.blue,)
                  ],
                )))
      ],
    ),
    ),
  );
}
Widget imageViewer({
  required double w,
  required double h,
  required String path,
  required int index,
  required List<String> imageList
}) {
  return Container(
      margin: EdgeInsets.only(right: 10, bottom: 10),
      child: Stack(
        children: [
          SizedBox(
              width: w,
              height: h,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(12),
                child: Image.asset(
                  path,
                  fit: BoxFit.cover,
                ),
              )
          ),
          if (imageList.length > 4 && index == 3)
            Container(
                width: w,
                height: h,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  color: Colors.black.withOpacity(0.50),
                ),
                child: Center(child: Text("+"+(imageList.length - index).toString(),
                  style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 26),),
                ))
        ],)
  );
}


void main() {
  runApp(MaterialApp(home: Dashboard()));
}
