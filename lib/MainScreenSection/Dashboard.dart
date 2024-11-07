import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class Dashboard extends StatefulWidget {
  const Dashboard({super.key});

  @override
  State<Dashboard> createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
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
              SizedBox(width: 10.0),
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
              Spacer(),
              GestureDetector(child: SvgPicture.asset('ass')
                  // onTap: (){
                  //   Navigator.push(context, MaterialPageRoute(builder:
                  //       (context) => Community()));
                  // },
                  ),
              SizedBox(
                width: 10,
              ),
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
        body: Padding(
          padding: EdgeInsets.all(14),
          child: Column(
            children: [
              ListView(
                children: [
                  ExpansionTile(
                    leading: Icon(Icons.message),
                    title: Text('You have a new message from Alexander...'),
                    children: [
                      Padding(
                        padding: EdgeInsets.all(16.0),
                        child: Text(
                            'More detailed information goes here. Click to collapse.'),
                      ),
                    ],
                  ),
                  ExpansionTile(
                    leading: Icon(Icons.local_pharmacy),
                    title: Text('Your malaria drugs have been exhausted'),
                    children: [
                      Padding(
                        padding: EdgeInsets.all(16.0),
                        child: Text(
                            'Detailed information about the status of your drugs.'),
                      ),
                    ],
                  ),
                  ExpansionTile(
                    leading: Icon(Icons.devices),
                    title: Text('Your device is ready for pickup'),
                    children: [
                      Padding(
                        padding: EdgeInsets.all(11.0),
                        child: Text(
                            'Details about the pickup location or process.'),
                      ),
                    ],
                  ),
                ],
              ),
              Row(
                children: [Text(''), Text('')],
              ),
              SizedBox(
                height: 30,
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
                  regularityColor: Color(0xffFF8E3C)),
              network_update(
                  profile_path: '',
                  name: '',
                  network_name: '',
                  date: '',
                  time: '',
                  text: ''),
            ],
          ),
        ),
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
  }) {
    return Container(
      padding: EdgeInsets.all(16.0),
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
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Label
          Container(
            padding: EdgeInsets.symmetric(horizontal: 8.0, vertical: 4.0),
            decoration: BoxDecoration(
              color: regularityColor.withOpacity(0.15),
              borderRadius: BorderRadius.circular(8.0),
            ),
            child: Text(
              regularity,
              style: TextStyle(
                color: regularityColor,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          SizedBox(height: 12.0),
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
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 16.0,
                    ),
                  ),
                  SizedBox(height: 4.0),
                  Text(
                    time + ' · ' + date,
                    style: TextStyle(
                      color: Colors.grey,
                      fontSize: 12.0,
                    ),
                  ),
                ],
              ),
            ],
          ),
          SizedBox(height: 16.0),
          // Divider
          Divider(color: Colors.grey[300]),
          SizedBox(height: 8.0),
          // Health Readings
          Row(
            children: [
              Text(
                'BP: ',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              Text('90/60mmHg, '),
              Text(
                'HbA1c: ',
                style:
                    TextStyle(fontWeight: FontWeight.bold, color: Colors.blue),
              ),
              Text('42mmol/mol, '),
              Text(
                'IHRA: ',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              Text('5.7%'),
            ],
          ),
        ],
      ),
    );
  }

  network_update(
      {required String profile_path,
      required String name,
      required String network_name,
      required String date,
      required String time,
      required String text,
      imageList}) {
    final int maxVisibleImages = 4;
    // image_shower(imageList, maxVisibleImages);

    return Column(children: []);
  }

  void image_shower(imageList, int maxVisibleImages) {
    if (imageList.length > 1) {
      Column(children: [
        SizedBox(height: 15),
        Wrap(
          spacing: 8.0,
          runSpacing: 8.0,
          children: List.generate(
            imageList.length > maxVisibleImages
                ? maxVisibleImages + 1
                : imageList.length,
            (index) {
              if (index < maxVisibleImages) {
                return ClipRRect(
                  borderRadius: BorderRadius.circular(8.0),
                  child: Image.asset(
                    imageList[index],
                    width: 100,
                    height: 100,
                    fit: BoxFit.cover,
                  ),
                );
              } else {
                final int remaining = imageList.length - maxVisibleImages;
                return Container(
                  width: 100,
                  height: 100,
                  decoration: BoxDecoration(
                    color: Colors.black.withOpacity(0.6),
                    borderRadius: BorderRadius.circular(8.0),
                  ),
                  child: Center(
                    child: Text(
                      '+$remaining',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                );
              }
            },
          ),
        ),
        SizedBox(height: 15),
      ]);
    } else if (imageList.length == 0) {
      ClipRRect(
          borderRadius: BorderRadius.circular(8.0),
          child: Image.asset(imageList[0]));
    }
  }
}

void main() {
  runApp(Dashboard());
}
