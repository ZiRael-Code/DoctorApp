import '../MainSelectionScreen/Dashboard.dart';
import 'package:doctor_app/Network/add_new_network.dart';
import 'package:doctor_app/Network/join_a_network.dart';
import 'package:doctor_app/Network/my_network.dart';
import 'package:flutter/material.dart';
import '../AddPatients/add_a_patient.dart';
import '../AddPatients/messages.dart';
import '../AllPatientReading/AllPatientReading.dart';
import '../Call_MessagePatient/SearchPatient.dart';
import '../Network1/AffiliatedNetwork.dart';
import '../Network1/PersonalMinistore.dart';
import 'Dashboard.dart';
import 'Patients.dart';

class Network extends StatefulWidget {
  Network({super.key});

  @override
  State<Network> createState() => _NetworkState();
}

class _NetworkState extends State<Network> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text("Network", style: TextStyle(fontSize: getFontSize(27, context), fontWeight: FontWeight.w500),),
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
                    InkWell(
                      onTap: (){
                        Navigator.push(context, MaterialPageRoute(builder: (builder)=>AffiliatedNetwork()));
                      },
                      child:
                      actions(
                        context,
                        Icons.supervisor_account,
                        "All affiliated networks",
                    ),
                    ),
                    InkWell(
                      onTap: (){
                        Navigator.push(context, MaterialPageRoute(builder: (builder)=>MyNetwork()));
                      },
                      child:
                    actions(
                        context,
                        Icons.public_outlined,
                        "My network"
                    ),
                    ),

                    InkWell(
                      onTap: (){
                        Navigator.push(context, MaterialPageRoute(builder: (builder)=>JoinANetwork()));
                      },
                      child:
                      actions(
                        context,
                        Icons.share,
                        "Join new network"
                    ),
                    ),
                    InkWell(
                      onTap: (){
                        Navigator.push(context, MaterialPageRoute(builder: (builder)=>Searchpatient()));
                      },
                      child:
                      actions(
                        context,
                        Icons.add_home_work_outlined,
                        "Personal ministore"
                    ),
                    ),
                  ],
                ),
                SizedBox(height: getFontSize(25, context),),
                Text("Network updates", style: TextStyle(fontSize: getFontSize(22, context), fontWeight: FontWeight.w500),)
               ]
          )
      )
                , Expanded(child:  SingleChildScrollView(
                    child:Padding(
                    padding: EdgeInsets.only(left: getFontSize(5, context), right: getFontSize(5, context)),
                    child: Container(
                      padding: EdgeInsets.only(left: getFontSize(1.5, context), right: getFontSize(1.5, context)),
                      width: double.infinity,
                      decoration: BoxDecoration(color: Colors.grey[300]),
                      child: Column(
                        children: [
                          SizedBox(
                            height: getFontSize(3, context),
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