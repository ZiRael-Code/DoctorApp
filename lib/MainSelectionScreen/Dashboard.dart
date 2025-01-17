import '../MainSelectionScreen/Dashboard.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:doctor_app/AllPatientReading/PatientReading.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../Network1/PersonalMinistore.dart';

class Dashboard extends StatefulWidget {
  final void Function(int index) onItemTapped;
  Dashboard({super.key,
    required this.onItemTapped});

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
  bool isCollaps = false;
  late int reverseIndex = show_notification.length -1;
  @override
  Widget build(BuildContext context) {
    double w = MediaQuery.of(context).size.width;
    double h = MediaQuery.of(context).size.height;

    getFontSize(double d) {
      return d * (MediaQuery.of(context).size.width / 375.0 + MediaQuery.of(context).size.height / 812.0) / 2.0;
    }
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Colors.white,
        title: Row(
          children: [
            SizedBox(
              width: getFontSize(50.0),
              height: getFontSize(50.0),
              child: GestureDetector(
                onTap: () {
                  setState(() {
                    widget.onItemTapped(3);
                  });
                },
                  child: CircleAvatar(
                radius: 50,
                backgroundImage: AssetImage('assets/images/dr.png'),
              )),
            ),
             SizedBox(width: getFontSize( 12.0)),
             Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Good morning",
                  style: TextStyle(
                    fontSize: getFontSize(16),
                  ),
                ),
                Text(
                  "Sanni Muiz",
                  style: TextStyle(
                    fontSize: getFontSize(26.0),
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
            Spacer(),
            GestureDetector(child: SvgPicture.asset('ass')
                // onTap: (){
                //   Navigator.push(context, MaterialPageRoute(builder:
                //       (context) => Community()));
                // },
                ),
            SizedBox(
              width: getFontSize(10),
            ),
            Icon(Icons.wallet_outlined, size: getFontSize(29),),
            SizedBox(width: getFontSize(10),),
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
                padding: EdgeInsets.all(14),
                child: Column(
                    children: [
                  Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Center(
                    child:
                 isCollaps ? buildNotificationList(Stack(children: []))
                            : buildNotificationList(Column(children: [])),)
                  ],
                  ),
                  Row(
                    children: [
                      AutoSizeText(
                        "Patients readings",
                        style: TextStyle(
                          fontSize: getFontSize(19),
                          fontWeight: FontWeight.w500,
                        ),
                        textAlign: TextAlign.left,
                      ),
                      Spacer(),
                      TextButton(
                          onPressed: () {},
                          child: AutoSizeText('See all',
                              style: TextStyle(
                                color: Colors.blue,
                                fontSize: getFontSize(16.0),
                              )))
                    ],
                  ),
                  SizedBox(
                    height: getFontSize(20 ),
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
                            regularityColor: Color(0xffFF8E3C),
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
                    height: getFontSize(14 ),
                  ),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: AutoSizeText(
                      "Network updates",
                      style: TextStyle(
                        fontSize: getFontSize(19),
                        fontWeight: FontWeight.w500,
                      ),
                      textAlign: TextAlign.left,
                    ),
                  ),
                ])),
            Padding(
                padding: EdgeInsets.only(left: getFontSize(5 ), right: getFontSize(5 )),
                child: Container(
                  padding: EdgeInsets.only(left: getFontSize(1.5 ), right: getFontSize(1.5 )),
                  width: double.infinity,
                  decoration: BoxDecoration(color: Colors.grey[300]),
                  child: Column(
                    children: [
                      SizedBox(
                        height: getFontSize(3,  ),
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
  Widget buildNotificationList(Widget layout) {
    int reverseIndex = show_notification.length - 1;

    List<Widget> notificationWidgets = List.generate(
      show_notification.length,
          (index) {
        Map<String, dynamic> nots = show_notification[index];
        return Center(child:  notification(
          nots['icon'],
          nots['text'],
          reverseIndex-- ,
        )
        );
      },
    );

    if (layout is Stack) {
      return Stack(children: notificationWidgets);
    } else if (layout is Column) {
      return Column(children: notificationWidgets);
    } else {
      return SizedBox();
    }
  }

  notification(Icon icon, String text,
      int index) {
    double w = MediaQuery.of(context).size.width;
    double h = MediaQuery.of(context).size.height;

    double textContSize = isCollaps ? index == 0 ?
        w * 0.65
        : index == 1
        ? w * 0.55
        : index == 2
        ? w * 0.48
        : double.infinity

        : w * 0.6
    ;

    return GestureDetector(
      onTap: (){
        setState(() {
          isCollaps = !isCollaps;
        });
      },
        child: SizedBox(
      // height: getFontSize(150, context),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
        SizedBox(height: isCollaps ?
        index == 0 ? h * 0.0
            : index == 1
        ? h * 0.020
            : index == 2
        ? h * 0.040
          : 0
          : 0,),

        Container(
          alignment: Alignment.center,
          width: isCollaps ?  index == 0 ?
          double.infinity
          : index == 1
          ? w * 0.85
              : index == 2
          ? w * 0.78
              : double.infinity

        : double.infinity,
      margin: EdgeInsets.only(bottom: getFontSize(10 ),),
      padding: EdgeInsets.only(top: getFontSize(19 ), bottom: getFontSize(19 ), left: getFontSize(12), right: getFontSize(12)),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12.0),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.2),
            spreadRadius: 2,
            blurRadius: 8,
            offset: Offset(0, 4),
          ),
        ],
      ),
      child:
      Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Container(
            width: getFontSize(35 ),
            height: getFontSize(35 ),
            decoration:
                BoxDecoration(shape: BoxShape.circle, color: Color(0xffE2EDFF)),
            child: icon,
          ),
          SizedBox(width: w * 0.04,),
          Align(
            child:
          Container(
            alignment: Alignment.centerLeft,
            width: textContSize,
            child: AutoSizeText(text,
                style: TextStyle(fontSize: getFontSize(16.0 )* MediaQuery.of(context).textScaleFactor, color: Colors.black45),
                overflow: TextOverflow.ellipsis),
          ),
          ),
          Spacer(),
          Align(
            alignment: Alignment.centerRight,
          child: Icon(Icons.arrow_forward_ios_rounded, color: Colors.blue),
          )

            ],
      ),

      ),
        ]
        ),
    )
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
    double w = MediaQuery.of(context).size.width;
    double h = MediaQuery.of(context).size.height;

    return InkWell(
    onTap: () =>{
      Navigator.push(context, action)
    },
        child: Container(
      margin: EdgeInsets.only(right: getFontSize(15 )),
      width: w * 0.80,
      padding: EdgeInsets.all(16.0),
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(12.0),
          border: Border.all(width: getFontSize(0.7 ), color: Colors.black12)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Label
          Container(
            padding: EdgeInsets.symmetric(horizontal: getFontSize(8.0 ), vertical: getFontSize(4.0 )),
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
          SizedBox(height: getFontSize(12.0 )),
          // User Information
          Row(
            children: [
              CircleAvatar(
                backgroundImage:
                    AssetImage(path), // Replace with your image asset
                radius: 24.0,
              ),
              SizedBox(width: getFontSize(12.0 )),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    name,
                    style: TextStyle(
                      fontWeight: FontWeight.w400,
                      fontSize: getFontSize(18.0),
                    ),
                  ),
                  SizedBox(height: getFontSize(4.0)),
                  Text(
                    '$time · $date',
                    style: TextStyle(
                      color: Colors.grey,
                      fontSize: getFontSize(12.0 ),
                    ),
                  ),
                ],
              ),
            ],
          ),
          SizedBox(height: getFontSize(16.0 )),
          SvgPicture.asset("assets/images/line.svg"),
          SizedBox(height: getFontSize(8.0 )),
          // Health Readings
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Text(
                    'BP: ',
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.blue,
                        fontSize: getFontSize(12 )),
                  ),
                  Text(bp, style: TextStyle(fontSize: getFontSize(12 )),
                    overflow: TextOverflow.ellipsis,
                  ),
                ],
              ),
              Row(
                children: [
                  Text(
                    'HbA1c: ',
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.blue,
                        fontSize: getFontSize(12 )),
                  ),
                  Text(hba1c, style: TextStyle(fontSize: getFontSize(12 )),

                    overflow: TextOverflow.ellipsis,
                  ),
                ],
              ),
              Row(
                children: [
                  Text(
                    overflow: TextOverflow.ellipsis,
                    'IHRA: ',
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.blue,
                        fontSize: getFontSize(12 )),
                  ),
                  Text(ihra, style: TextStyle(fontSize: getFontSize(12 )),
                    overflow: TextOverflow.ellipsis,
                  ),
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

  getFontSize(double d) {
    return d * (MediaQuery.of(context).size.width / 375.0 + MediaQuery.of(context).size.height / 812.0) / 2.0;
  }
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
  double w = MediaQuery.of(context).size.width;
  double h = MediaQuery.of(context).size.height;

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
    margin: EdgeInsets.only(bottom: getFontSize(15, context)),
    decoration: BoxDecoration(color: Colors.white),
    padding: EdgeInsets.all(12),
    child: Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            SizedBox(
              width: getFontSize(42, context) * w / 375,
              height: getFontSize(42, context) * h / 812,
              child: CircleAvatar(
                radius: 50,
                backgroundImage: AssetImage(profile_path),
              ),
            ),
             SizedBox(
              width: getFontSize(10, context),
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(children: [
                  AutoSizeText(
                    "$name . ",
                    style: TextStyle(fontSize: getFontSize(17, context)),
                  ),
                  Text(
                    network_name,
                    style: TextStyle(color: Colors.blue),
                  )
                ]),
                Text("$time . $date",
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
          height: getFontSize(20, context),
        ),
        SizedBox(
          width: getFontSize(285, context),
          child: Text(text, style: TextStyle(fontSize: getFontSize(16.8, context))),
        ),
        SizedBox(
          height: getFontSize(20, context),
        ),
        imageList.length == 1
            ? imageViewer(w: double.infinity, h: 326 * h / 817, path: imageList[0], imageList: imageList, index: 0)
            : imageList.length > 1
            ? Center(child:  Wrap(
          direction: Axis.horizontal,
          children: List.generate(lenght, (index) {
            return imageViewer(
                w: getFontSize(157, context), h: getFontSize(170, context), path: imageList[index],
                imageList: imageList,
                index: index
            );
          }),
        )
        )
            : SizedBox(height: getFontSize(15, context),),
        SizedBox(height: getFontSize(8, context),),
        Align(alignment: Alignment.center,
            child:
            Container(
                padding: EdgeInsets.all(12),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    border: Border.all(
                      color: Colors.grey.withOpacity(0.5),
                      width: getFontSize(1, context),
                    ),
                    color: Color(0xffE2EDFF)),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text("View details", style: TextStyle(color: Colors.blue, fontSize: getFontSize(16, context)),),
                    Icon(Icons.arrow_forward, color: Colors.blue,)
                  ],
                )))
      ],
    ),
    ),
  );
}

getFontSize(double d, BuildContext context) {
  return d * (MediaQuery.of(context).size.width / 375.0 + MediaQuery.of(context).size.height / 812.0) / 2.0;
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
                child: Center(child: Text("+${imageList.length - index}",
                  style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 26),),
                ))
        ],)
  );
}

//
// void main() {
//   runApp(MaterialApp(home: Dashboard()));
