import 'package:doctor_app/Network/add_new_network.dart';
import 'package:doctor_app/Network/invite_people.dart';
import 'package:doctor_app/components/network_list_tile.dart';
import 'package:flutter/material.dart';

import '../MainSelectionScreen/Dashboard.dart';

class MyNetwork extends StatefulWidget {
  MyNetwork({super.key});

  @override
  State<MyNetwork> createState() => _MyNetworkState();
}

class _MyNetworkState extends State<MyNetwork> {
  void _showDropdownPopups(BuildContext context) {
    showModalBottomSheet(
      context: context,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(16.0), // Rounded corners
      ),
      builder: (context) {
        return Container(
          padding: EdgeInsets.symmetric(vertical: 16.0, horizontal: 8.0),
          child: Column(
            mainAxisSize: MainAxisSize.min, // Keep it minimal height
            children: [
              ListTile(
                title: Center(
                  child: Text(
                    'Switch network',
                    style: TextStyle(fontSize: getFontSize(16, context)),
                  ),
                ),
                onTap: () {
                  Navigator.pop(context); // Close the popup
                  // Handle "Switch network" action
                  _SwitchNetworkPopup(context);
                },
              ),
              Divider(), // Divider between options
              ListTile(
                title: Center(
                  child: Text(
                    'Create new network',
                    style: TextStyle(fontSize: getFontSize(16, context)),
                  ),
                ),
                onTap: () {
                  Navigator.pop(context); // Close the popup
                  // Handle "Create new network" action
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => AddNewNetwork()));
                },
              ),
              Divider(), // Divider between options
              ListTile(
                title: Center(
                  child: Text(
                    'Invite people',
                    style: TextStyle(fontSize: getFontSize(16, context)),
                  ),
                ),
                onTap: () {
                  Navigator.pop(context); // Close the popup
                  // Handle "Invite people" action
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => InvitePeople()));
                },
              ),
              Divider(), // Divider between options
              ListTile(
                title:  Center(
                  child: Text(
                    'Leave network',
                    style: TextStyle(fontSize: getFontSize(16, context)),
                  ),
                ),
                onTap: () {
                  Navigator.pop(context); // Close the popup
                  // Handle "Leave network" action
                  _LeaveNetworkPopup(context);
                },
              ),
            ],
          ),
        );
      },
    );
  }

  void _SwitchNetworkPopup(BuildContext context) {
    showModalBottomSheet(
        context: context,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(16.0), // Rounded corners
        ),
        builder: (context) {
          return Container(
            padding:
                EdgeInsets.symmetric(vertical: 16.0, horizontal: 8.0),
            child:  Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                SizedBox(
                  height: getFontSize(20, context),
                ),
                Text(
                  "Switch Network",
                  style: TextStyle(fontSize: getFontSize(16, context), fontWeight: FontWeight.w500),
                ),
                SizedBox(
                  height: getFontSize(20, context),
                ),
                NetworkListTile(
                    isChecked: true), // This tile will start as checked
                NetworkListTile(
                    isChecked: false), // This tile will start as unchecked
              ],
            ),
          );
        });
  }

  void _LeaveNetworkPopup(BuildContext context) {
    bool isNoSelected = true;
    bool isYesSelected = false;

    showModalBottomSheet(
      context: context,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(16.0), // Rounded corners
      ),
      builder: (context) {
        return StatefulBuilder(
          // Use StatefulBuilder to manage state within the modal
          builder: (context, setState) {
            return Container(
              height: getFontSize(210, context),
              padding:
                  EdgeInsets.symmetric(vertical: 16.0, horizontal: 8.0),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                   SizedBox(height: getFontSize(25, context)),
                   SizedBox(
                    width: getFontSize(230, context),
                    height: getFontSize(45, context),
                    child: Text(
                      "Are you sure you want to leave the network?",
                      style:
                          TextStyle(fontSize: getFontSize(16, context), fontWeight: FontWeight.bold),
                    ),
                  ),
                   SizedBox(height: getFontSize(25, context)),
                  Center(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        // No button
                        GestureDetector(
                          onTap: () {
                            setState(() {
                              isNoSelected = true;
                              isYesSelected = false;
                            });
                          },
                          child: Container(
                            width: getFontSize(124, context),
                            height: getFontSize(50, context),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color:
                                  isNoSelected ? Colors.blue : Colors.grey[200],
                            ),
                            child: Center(
                              child: Text(
                                "No",
                                style: TextStyle(
                                  color:
                                      isNoSelected ? Colors.white : Colors.blue,
                                  fontSize: getFontSize(16, context),
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                          ),
                        ),
                         SizedBox(
                          width: getFontSize(20, context),
                        ),
                        // Yes button
                        GestureDetector(
                          onTap: () {
                            setState(() {
                              isYesSelected = true;
                              isNoSelected = false;
                            });
                          },
                          child: Container(
                            width: getFontSize(124, context),
                            height: getFontSize(50, context),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: isYesSelected
                                  ? Colors.blue
                                  : Colors.grey[200],
                            ),
                            child: Center(
                              child: Text(
                                "Yes",
                                style: TextStyle(
                                  color: isYesSelected
                                      ? Colors.white
                                      : Colors.blue,
                                  fontSize: getFontSize(16, context),
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            );
          },
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            children: [
              Stack(
                children: [
                  Container(
                    height: getFontSize(195, context),
                    decoration: BoxDecoration(
                      color: Colors.blue[400],
                      borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(25),
                        bottomRight: Radius.circular(25),
                      ),
                    ),
                    child: Padding(
                      padding: EdgeInsets.symmetric(horizontal: 25),
                      child: Column(
                        children: [
                           SizedBox(height: getFontSize(50, context)),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              GestureDetector(
                                onTap: () => Navigator.pop(context),
                                child: Container(
                                  height: getFontSize(45, context),
                                  width: getFontSize(45, context),
                                  decoration: BoxDecoration(
                                    color: Colors.blue[300],
                                    shape: BoxShape.circle,
                                  ),
                                  child: Icon(
                                    Icons.arrow_back,
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                              Text(
                                "My Network",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white,
                                    fontSize: getFontSize(20, context)),
                              ),
                              GestureDetector(
                                onTap: () => _showDropdownPopups(context),
                                child: Container(
                                  width: getFontSize(45, context),
                                  height: getFontSize(45, context),
                                  decoration: BoxDecoration(
                                    color: Colors.blue[400],
                                    shape: BoxShape.circle,
                                  ),
                                  child: Image.asset(
                                      "assets/images/whitedots.png"),
                                ),
                              )
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                   SizedBox(
                    height: getFontSize(30, context),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: getFontSize(140, context)),
                    child: Center(
                      child: Container(
                        width: getFontSize(350, context),
                        height: getFontSize(135, context),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          border: Border.all(color: Colors.grey.shade200),
                          borderRadius: BorderRadius.circular(12),
                        ),
                        child: Column(
                          children: [
                            Center(
                              child: Padding(
                                padding:
                                    EdgeInsets.only(left: getFontSize(20, context), top: getFontSize(20, context)),
                                child: Row(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    CircleAvatar(
                                      backgroundImage:
                                          AssetImage("assets/images/guild.png"),
                                      radius: 25,
                                    ),
                                    SizedBox(width: getFontSize(10, context)),
                                    // Constrain text to prevent overflow
                                    Expanded(
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            "Guild of Nigerian Dentists",
                                            style: TextStyle(
                                                fontWeight: FontWeight.bold,
                                                fontSize: getFontSize(16, context)),
                                            overflow: TextOverflow
                                                .ellipsis, // Truncate text if needed
                                          ),
                                          SizedBox(height: getFontSize(5, context)),
                                          Text(
                                            "A network for dentists in Nigeria to discuss ...",
                                            style: TextStyle(
                                                fontSize: getFontSize(10, context),
                                                color: Colors.grey[400]),
                                            overflow: TextOverflow
                                                .ellipsis, // Truncate text if needed
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                             SizedBox(
                              height: getFontSize(10, context),
                            ),
                            Stack(
                              children: [
                                Center(
                                  child: SizedBox(
                                    width: getFontSize(300, context),
                                    child: Divider(
                                      color: Colors.grey.shade200,
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding:  EdgeInsets.only(top: getFontSize(8, context)),
                                  child: Container(
                                    padding: EdgeInsets.symmetric(
                                        horizontal: 16),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceEvenly,
                                      children: [
                                        // Members Section
                                         Flexible(
                                          child: Padding(
                                            padding: EdgeInsets.only(left: getFontSize(25, context)),
                                            child: Row(
                                              children: [
                                                Text(
                                                  "55",
                                                  style: TextStyle(
                                                      color: Colors.blue,
                                                      fontSize: getFontSize(16, context),
                                                      fontWeight:
                                                          FontWeight.bold),
                                                ),
                                                SizedBox(width: getFontSize(10, context)),
                                                Flexible(
                                                  child: Text(
                                                    "Members",
                                                    overflow:
                                                        TextOverflow.ellipsis,
                                                    style:
                                                        TextStyle(fontSize: getFontSize(16, context)),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ),
                                        // Divider
                                        Container(
                                          width: getFontSize(1, context),
                                          height: getFontSize(35, context),
                                          color: Colors.grey.shade200,
                                        ),
                                        // Posts Section
                                         Flexible(
                                          child: Padding(
                                            padding: EdgeInsets.only(left: getFontSize(25, context)),
                                            child: Row(
                                              children: [
                                                Text(
                                                  "22",
                                                  style: TextStyle(
                                                      color: Colors.blue,
                                                      fontSize: getFontSize(16, context),
                                                      fontWeight:
                                                          FontWeight.bold),
                                                ),
                                                SizedBox(width: getFontSize(10, context)),
                                                Flexible(
                                                  child: Text(
                                                    "Posts",
                                                    overflow:
                                                        TextOverflow.ellipsis,
                                                    style:
                                                        TextStyle(fontSize: getFontSize(16, context)),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            )
                          ],
                        ),
                      ),
                    ),
                  )
                ],
              ),
              SizedBox(
                height: getFontSize(40, context),
              ),
               Padding(
                padding: EdgeInsets.symmetric(horizontal: 28),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Network updates",
                      style:
                          TextStyle(fontSize: getFontSize(18, context), fontWeight: FontWeight.bold),
                    ),
                    Text(
                      "Add a post",
                      style: TextStyle(color: Colors.blue, fontSize: getFontSize(14, context)),
                    )
                  ],
                ),
              ),
SizedBox(
                height: getFontSize(25, context),
              ),
              Container(
                height: getFontSize(224, context),
                width: getFontSize(400, context),
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.grey.shade200),
                ),
                child: Column(
                  children: [
                     SizedBox(
                      height: getFontSize(20, context),
                    ),
                    // main row
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 25),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          // row with profile and name
                           Row(
                            children: [
                              CircleAvatar(
                                backgroundImage:
                                    AssetImage("assets/images/drugs.png"),
                                radius: 25,
                              ),
                              Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Row(
                                    children: [
                                      Padding(
                                        padding: EdgeInsets.only(left: getFontSize(15, context)),
                                        child: Text(
                                          "RX Pharmacy . ",
                                          style: TextStyle(
                                              fontSize: getFontSize(14, context),
                                              fontWeight: FontWeight.w500),
                                        ),
                                      ),
                                      Text(
                                        "My Network",
                                        style: TextStyle(
                                            color: Colors.blue, fontSize: getFontSize(14, context)),
                                      ),
                                    ],
                                  ),
                                  SizedBox(
                                    height: getFontSize(4, context),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(right: getFontSize(46, context)),
                                    child: Text(
                                      "11:20am . 9th Sept 2022",
                                      style: TextStyle(
                                          color: Colors.grey, fontSize: getFontSize(10, context)),
                                    ),
                                  )
                                ],
                              ),
                            ],
                          ),
                          Image.asset(
                            "assets/images/blackdots.png",
                            width: getFontSize(4, context),
                            height: getFontSize(15, context),
                          )
                        ],
                      ),
                    ),
                     SizedBox(
                      height: getFontSize(20, context),
                    ),
                    SizedBox(
                      width: getFontSize(326, context),
                      height: getFontSize(47, context),
                      child: Text(
                        "We have restocked our pharmacy and new drugs are now available for sale.",
                        style: TextStyle(
                            fontWeight: FontWeight.w500, fontSize: getFontSize(16, context)),
                      ),
                    ),
                     SizedBox(
                      height: getFontSize(20, context),
                    ),
                    Container(
                      width: getFontSize(119, context),
                      height: getFontSize(37, context),
                      decoration: BoxDecoration(
                          color: Colors.blue[50],
                          border: Border.all(color: Colors.blue),
                          borderRadius: BorderRadius.circular(12)),
                      child: Padding(
                        padding:  EdgeInsets.only(left: getFontSize(12, context)),
                        child: Row(
                          children: [
                             Text(
                              "View details",
                              style: TextStyle(
                                  fontSize: getFontSize(12, context),
                                  color: Colors.blue,
                                  fontWeight: FontWeight.bold),
                            ),
                             SizedBox(
                              width: getFontSize(4, context),
                            ),
                            Icon(
                              Icons.arrow_forward,
                              color: Colors.blue[200],
                            )
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 4),
                child: Container(
                  width: getFontSize(410, context),
                  height: getFontSize(10, context),
                  color: Colors.grey[300],
                ),
              ),
              Container(
                height: getFontSize(575, context),
                width: getFontSize(400, context),
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.grey.shade200),
                ),
                child: Column(
                  children: [
                     SizedBox(
                      height: getFontSize(20, context),
                    ),
                    // main row
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 25),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          // row with profile and name
                           Row(
                            children: [
                              CircleAvatar(
                                backgroundImage:
                                    AssetImage("assets/images/bed.png"),
                                radius: 25,
                              ),
                              Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Row(
                                    children: [
                                      Padding(
                                        padding: EdgeInsets.only(left: getFontSize(15, context)),
                                        child: Text(
                                          "New Life Hospital . ",
                                          style: TextStyle(
                                              fontSize: getFontSize(14, context),
                                              fontWeight: FontWeight.w500),
                                        ),
                                      ),
                                      Text(
                                        "Jame's Network",
                                        style: TextStyle(
                                            color: Colors.blue, fontSize: getFontSize(14, context)),
                                      ),
                                    ],
                                  ),
                                  SizedBox(
                                    height: getFontSize(4, context),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(right: getFontSize(46, context)),
                                    child: Text(
                                      "11:20am . 9th Sept 2022",
                                      style: TextStyle(
                                          color: Colors.grey, fontSize: getFontSize(10, context)),
                                    ),
                                  )
                                ],
                              ),
                            ],
                          ),
                          Image.asset(
                            "assets/images/blackdots.png",
                            width: getFontSize(4, context),
                            height: getFontSize(15, context),
                          )
                        ],
                      ),
                    ),
                     SizedBox(
                      height: getFontSize(20, context),
                    ),
                    SizedBox(
                      width: getFontSize(326, context),
                      height: getFontSize(47, context),
                      child: Text(
                        "We have new devices to measure vitals in stock.",
                        style: TextStyle(
                            fontWeight: FontWeight.w500, fontSize: getFontSize(16, context)),
                      ),
                    ),
                    SizedBox(
                      height: getFontSize(20, context),
                    ),

                    SizedBox(
                      width: getFontSize(326, context),
                      height: getFontSize(326, context),
                      child: Image.asset("assets/images/recpng.png"),
                    ),
                     SizedBox(
                      height: getFontSize(20, context),
                    ),
                    Container(
                      width: getFontSize(119, context),
                      height: getFontSize(37, context),
                      decoration: BoxDecoration(
                          color: Colors.blue[50],
                          border: Border.all(color: Colors.blue),
                          borderRadius: BorderRadius.circular(12)),
                      child: Padding(
                        padding:  EdgeInsets.only(left: getFontSize(12, context)),
                        child: Row(
                          children: [
                             Text(
                              "View details",
                              style: TextStyle(
                                  fontSize: getFontSize(12, context),
                                  color: Colors.blue,
                                  fontWeight: FontWeight.bold),
                            ),
                            SizedBox(
                              width: getFontSize(4, context),
                            ),
                            Icon(
                              Icons.arrow_forward,
                              color: Colors.blue[200],
                            )
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 4),
                child: Container(
                  width: getFontSize(410, context),
                  height: getFontSize(10, context),
                  color: Colors.grey[300],
                ),
              ),
              Container(
                height: getFontSize(224, context),
                width: getFontSize(400, context),
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.grey.shade200),
                ),
                child: Column(
                  children: [
                     SizedBox(
                      height: getFontSize(20, context),
                    ),
                    // main row
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 25),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          // row with profile and name
                          Row(
                            children: [
                              CircleAvatar(
                                backgroundImage:
                                    AssetImage("assets/images/drugs.png"),
                                radius: 25,
                              ),
                              Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Row(
                                    children: [
                                      Padding(
                                        padding:
                                            EdgeInsets.only(left: getFontSize(15, context)),
                                        child: Text(
                                          "RX Pharmacy . ",
                                          style: TextStyle(
                                              fontSize: getFontSize(14, context),
                                              fontWeight: FontWeight.w500),
                                        ),
                                      ),
                                      Text(
                                        "My Network",
                                        style: TextStyle(
                                            color: Colors.blue, fontSize: getFontSize(14, context)),
                                      ),
                                    ],
                                  ),
                                  SizedBox(
                                    height: getFontSize(4, context),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(right: getFontSize(46, context)),
                                    child: Text(
                                      "11:20am . 9th Sept 2022",
                                      style: TextStyle(
                                          color: Colors.grey, fontSize: getFontSize(10, context)),
                                    ),
                                  )
                                ],
                              ),
                            ],
                          ),
                          Image.asset(
                            "assets/images/blackdots.png",
                            width: getFontSize(4, context),
                            height: getFontSize(15, context),
                          )
                        ],
                      ),
                    ),
                    SizedBox(
                      height: getFontSize(20, context),
                    ),
                     SizedBox(
                      width: getFontSize(326, context),
                      height: getFontSize(47, context),
                      child: Text(
                        "We have restocked our pharmacy and new drugs are now available for sale.",
                        style: TextStyle(
                            fontWeight: FontWeight.w500, fontSize: getFontSize(16, context)),
                      ),
                    ),
                     SizedBox(
                      height: getFontSize(20, context),
                    ),
                    Container(
                      width: getFontSize(119, context),
                      height: getFontSize(37, context),
                      decoration: BoxDecoration(
                          color: Colors.blue[50],
                          border: Border.all(color: Colors.blue),
                          borderRadius: BorderRadius.circular(12)),
                      child: Padding(
                        padding:  EdgeInsets.only(left: getFontSize(12, context)),
                        child: Row(
                          children: [
                             Text(
                              "View details",
                              style: TextStyle(
                                  fontSize: getFontSize(12, context),
                                  color: Colors.blue,
                                  fontWeight: FontWeight.bold),
                            ),
                            SizedBox(
                              width: getFontSize(4, context),
                            ),
                            Icon(
                              Icons.arrow_forward,
                              color: Colors.blue[200],
                            )
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 4),
                child: Container(
                  width: getFontSize(410, context),
                  height: getFontSize(10, context),
                  color: Colors.grey[300],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
