import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../AddPatients/add_a_patient.dart';
import '../AddPatients/messages.dart';
import '../AllPatientReading/AllPatientReading.dart';
import '../Call_MessagePatient/SearchPatient.dart';
import '../Network1/PersonalMinistore.dart';
import 'Dashboard.dart';
import 'Patients.dart';

class Network extends StatefulWidget {
  const Network({super.key});

  @override
  State<Network> createState() => _NetworkState();
}

class _NetworkState extends State<Network> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title:  Text("Network", style: TextStyle(fontSize: 26, fontWeight: FontWeight.w500),),
      ),
      body: Column(
              children: [
      Padding(padding: EdgeInsets.all(12),
        child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
        Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    actions(
                        context,
                        Icons.supervisor_account,
                        "All affiliated networks",
                        MaterialPageRoute(builder: (builder)=>AddAPatient())
                    ),
                    actions(
                        context,
                        Icons.public_outlined,
                        "My network",
                         MaterialPageRoute(builder: (builder)=>Messages())
                    ),
                    actions(
                        context,
                        Icons.share,
                        "Join new network",
                        MaterialPageRoute(builder: (builder)=>AllPatientReading())
                    ),
                    actions(
                        context,
                        Icons.add_home_work_outlined,
                        "Personal ministore",
                        MaterialPageRoute(builder: (builder)=>Searchpatient())
                    ),
                  ],
                ),
                SizedBox(height: 25,),
                Text("Network updates", style: TextStyle(fontSize: 22, fontWeight: FontWeight.w500),)
               ]
          )
      )
                , Expanded(child:  SingleChildScrollView(
                    child:Padding(
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
                              imageList: []
                              ,context: context,
                              action: MaterialPageRoute(builder: (builder)=> Ministore())

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
                                "assets/images/doc.png"]
                              ,context: context,
                              action: MaterialPageRoute(builder: (builder)=> Ministore())

                          ),
                          network_update(
                              network_name: "My Network",
                              profile_path: "assets/images/doc1.png",
                              name: "Rayoo Rayoo",
                              time: "11:20am",
                              date: "9th Sept 2022",
                              text:
                              "We have restocked our pharmacy and new drugs are now available for sale.",
                              imageList: []
                              ,context: context,
                              action: MaterialPageRoute(builder: (builder)=> Ministore())

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
                              ]
                              ,context: context,
                              action: MaterialPageRoute(builder: (builder)=> Ministore())
                          ),

                        ],
                      ),
                      ),
                      ),
                    ))
              ]
          )
    );
  }
}
