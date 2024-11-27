import 'package:doctor_app/Network/add_new_network.dart';
import 'package:doctor_app/Network/invite_people.dart';
import 'package:doctor_app/components/network_list_tile.dart';
import 'package:flutter/material.dart';

class MyNetwork extends StatefulWidget {
  const MyNetwork({super.key});

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
          padding: const EdgeInsets.symmetric(vertical: 16.0, horizontal: 8.0),
          child: Column(
            mainAxisSize: MainAxisSize.min, // Keep it minimal height
            children: [
              ListTile(
                title: const Center(
                  child: Text(
                    'Switch network',
                    style: TextStyle(fontSize: 16),
                  ),
                ),
                onTap: () {
                  Navigator.pop(context); // Close the popup
                  // Handle "Switch network" action
                  _SwitchNetworkPopup(context);
                },
              ),
              const Divider(), // Divider between options
              ListTile(
                title: const Center(
                  child: Text(
                    'Create new network',
                    style: TextStyle(fontSize: 16),
                  ),
                ),
                onTap: () {
                  Navigator.pop(context); // Close the popup
                  // Handle "Create new network" action
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => const AddNewNetwork()));
                },
              ),
              const Divider(), // Divider between options
              ListTile(
                title: const Center(
                  child: Text(
                    'Invite people',
                    style: TextStyle(fontSize: 16),
                  ),
                ),
                onTap: () {
                  Navigator.pop(context); // Close the popup
                  // Handle "Invite people" action
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => const InvitePeople()));
                },
              ),
              const Divider(), // Divider between options
              ListTile(
                title: const Center(
                  child: Text(
                    'Leave network',
                    style: TextStyle(fontSize: 16),
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
                const EdgeInsets.symmetric(vertical: 16.0, horizontal: 8.0),
            child: const Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                SizedBox(
                  height: 20,
                ),
                Text(
                  "Switch Network",
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
                ),
                SizedBox(
                  height: 20,
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
    // Define states for the buttons
    bool isNoSelected = true; // Default selected button
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
              height: 210,
              padding:
                  const EdgeInsets.symmetric(vertical: 16.0, horizontal: 8.0),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  const SizedBox(height: 25),
                  const SizedBox(
                    width: 230,
                    height: 45,
                    child: Text(
                      "Are you sure you want to leave the network?",
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                    ),
                  ),
                  const SizedBox(height: 25),
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
                            width: 124,
                            height: 50,
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
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(
                          width: 20,
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
                            width: 124,
                            height: 50,
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
                                  fontSize: 16,
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
                    height: 195,
                    decoration: BoxDecoration(
                      color: Colors.blue[400],
                      borderRadius: const BorderRadius.only(
                        bottomLeft: Radius.circular(25),
                        bottomRight: Radius.circular(25),
                      ),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 25),
                      child: Column(
                        children: [
                          const SizedBox(height: 50),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              GestureDetector(
                                onTap: () => Navigator.pop(context),
                                child: Container(
                                  height: 45,
                                  width: 45,
                                  decoration: BoxDecoration(
                                    color: Colors.blue[300],
                                    shape: BoxShape.circle,
                                  ),
                                  child: const Icon(
                                    Icons.arrow_back,
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                              const Text(
                                "My Network",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white,
                                    fontSize: 20),
                              ),
                              GestureDetector(
                                onTap: () => _showDropdownPopups(context),
                                child: Container(
                                  width: 45,
                                  height: 45,
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
                  const SizedBox(
                    height: 30,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 140),
                    child: Center(
                      child: Container(
                        width: 350,
                        height: 135,
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
                                    const EdgeInsets.only(left: 20, top: 20),
                                child: Row(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    const CircleAvatar(
                                      backgroundImage:
                                          AssetImage("assets/images/guild.png"),
                                      radius: 25,
                                    ),
                                    const SizedBox(width: 10),
                                    // Constrain text to prevent overflow
                                    Expanded(
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          const Text(
                                            "Guild of Nigerian Dentists",
                                            style: TextStyle(
                                                fontWeight: FontWeight.bold,
                                                fontSize: 16),
                                            overflow: TextOverflow
                                                .ellipsis, // Truncate text if needed
                                          ),
                                          const SizedBox(height: 5),
                                          Text(
                                            "A network for dentists in Nigeria to discuss ...",
                                            style: TextStyle(
                                                fontSize: 10,
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
                            const SizedBox(
                              height: 10,
                            ),
                            Stack(
                              children: [
                                Center(
                                  child: SizedBox(
                                    width: 300,
                                    child: Divider(
                                      color: Colors.grey.shade200,
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(top: 8),
                                  child: Container(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 16),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceEvenly,
                                      children: [
                                        // Members Section
                                        const Flexible(
                                          child: Padding(
                                            padding: EdgeInsets.only(left: 25),
                                            child: Row(
                                              children: [
                                                Text(
                                                  "55",
                                                  style: TextStyle(
                                                      color: Colors.blue,
                                                      fontSize: 16,
                                                      fontWeight:
                                                          FontWeight.bold),
                                                ),
                                                SizedBox(width: 10),
                                                Flexible(
                                                  child: Text(
                                                    "Members",
                                                    overflow:
                                                        TextOverflow.ellipsis,
                                                    style:
                                                        TextStyle(fontSize: 16),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ),
                                        // Divider
                                        Container(
                                          width: 1,
                                          height: 35,
                                          color: Colors.grey.shade200,
                                        ),
                                        // Posts Section
                                        const Flexible(
                                          child: Padding(
                                            padding: EdgeInsets.only(left: 25),
                                            child: Row(
                                              children: [
                                                Text(
                                                  "22",
                                                  style: TextStyle(
                                                      color: Colors.blue,
                                                      fontSize: 16,
                                                      fontWeight:
                                                          FontWeight.bold),
                                                ),
                                                SizedBox(width: 10),
                                                Flexible(
                                                  child: Text(
                                                    "Posts",
                                                    overflow:
                                                        TextOverflow.ellipsis,
                                                    style:
                                                        TextStyle(fontSize: 16),
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
              const SizedBox(
                height: 40,
              ),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 28),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Network updates",
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                    ),
                    Text(
                      "Add a post",
                      style: TextStyle(color: Colors.blue, fontSize: 14),
                    )
                  ],
                ),
              ),
              const SizedBox(
                height: 25,
              ),
              Container(
                height: 224,
                width: 400,
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.grey.shade200),
                ),
                child: Column(
                  children: [
                    const SizedBox(
                      height: 20,
                    ),
                    // main row
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 25),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          // row with profile and name
                          const Row(
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
                                        padding: EdgeInsets.only(left: 15),
                                        child: Text(
                                          "RX Pharmacy . ",
                                          style: TextStyle(
                                              fontSize: 14,
                                              fontWeight: FontWeight.w500),
                                        ),
                                      ),
                                      Text(
                                        "My Network",
                                        style: TextStyle(
                                            color: Colors.blue, fontSize: 14),
                                      ),
                                    ],
                                  ),
                                  SizedBox(
                                    height: 4,
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(right: 46),
                                    child: Text(
                                      "11:20am . 9th Sept 2022",
                                      style: TextStyle(
                                          color: Colors.grey, fontSize: 10),
                                    ),
                                  )
                                ],
                              ),
                            ],
                          ),
                          Image.asset(
                            "assets/images/blackdots.png",
                            width: 4,
                            height: 15,
                          )
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    const SizedBox(
                      width: 326,
                      height: 47,
                      child: Text(
                        "We have restocked our pharmacy and new drugs are now available for sale.",
                        style: TextStyle(
                            fontWeight: FontWeight.w500, fontSize: 16),
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Container(
                      width: 119,
                      height: 37,
                      decoration: BoxDecoration(
                          color: Colors.blue[50],
                          border: Border.all(color: Colors.blue),
                          borderRadius: BorderRadius.circular(12)),
                      child: Padding(
                        padding: const EdgeInsets.only(left: 12),
                        child: Row(
                          children: [
                            const Text(
                              "View details",
                              style: TextStyle(
                                  fontSize: 12,
                                  color: Colors.blue,
                                  fontWeight: FontWeight.bold),
                            ),
                            const SizedBox(
                              width: 4,
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
                padding: const EdgeInsets.symmetric(horizontal: 4),
                child: Container(
                  width: 410,
                  height: 10,
                  color: Colors.grey[300],
                ),
              ),
              Container(
                height: 575,
                width: 400,
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.grey.shade200),
                ),
                child: Column(
                  children: [
                    const SizedBox(
                      height: 20,
                    ),
                    // main row
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 25),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          // row with profile and name
                          const Row(
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
                                        padding: EdgeInsets.only(left: 15),
                                        child: Text(
                                          "New Life Hospital . ",
                                          style: TextStyle(
                                              fontSize: 14,
                                              fontWeight: FontWeight.w500),
                                        ),
                                      ),
                                      Text(
                                        "Jame's Network",
                                        style: TextStyle(
                                            color: Colors.blue, fontSize: 14),
                                      ),
                                    ],
                                  ),
                                  SizedBox(
                                    height: 4,
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(right: 46),
                                    child: Text(
                                      "11:20am . 9th Sept 2022",
                                      style: TextStyle(
                                          color: Colors.grey, fontSize: 10),
                                    ),
                                  )
                                ],
                              ),
                            ],
                          ),
                          Image.asset(
                            "assets/images/blackdots.png",
                            width: 4,
                            height: 15,
                          )
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    const SizedBox(
                      width: 326,
                      height: 47,
                      child: Text(
                        "We have new devices to measure vitals in stock.",
                        style: TextStyle(
                            fontWeight: FontWeight.w500, fontSize: 16),
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),

                    SizedBox(
                      width: 326,
                      height: 326,
                      child: Image.asset("assets/images/recpng.png"),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Container(
                      width: 119,
                      height: 37,
                      decoration: BoxDecoration(
                          color: Colors.blue[50],
                          border: Border.all(color: Colors.blue),
                          borderRadius: BorderRadius.circular(12)),
                      child: Padding(
                        padding: const EdgeInsets.only(left: 12),
                        child: Row(
                          children: [
                            const Text(
                              "View details",
                              style: TextStyle(
                                  fontSize: 12,
                                  color: Colors.blue,
                                  fontWeight: FontWeight.bold),
                            ),
                            const SizedBox(
                              width: 4,
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
                padding: const EdgeInsets.symmetric(horizontal: 4),
                child: Container(
                  width: 410,
                  height: 10,
                  color: Colors.grey[300],
                ),
              ),
              Container(
                height: 224,
                width: 400,
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.grey.shade200),
                ),
                child: Column(
                  children: [
                    const SizedBox(
                      height: 20,
                    ),
                    // main row
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 25),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          // row with profile and name
                          const Row(
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
                                        padding: EdgeInsets.only(left: 15),
                                        child: Text(
                                          "RX Pharmacy . ",
                                          style: TextStyle(
                                              fontSize: 14,
                                              fontWeight: FontWeight.w500),
                                        ),
                                      ),
                                      Text(
                                        "My Network",
                                        style: TextStyle(
                                            color: Colors.blue, fontSize: 14),
                                      ),
                                    ],
                                  ),
                                  SizedBox(
                                    height: 4,
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(right: 46),
                                    child: Text(
                                      "11:20am . 9th Sept 2022",
                                      style: TextStyle(
                                          color: Colors.grey, fontSize: 10),
                                    ),
                                  )
                                ],
                              ),
                            ],
                          ),
                          Image.asset(
                            "assets/images/blackdots.png",
                            width: 4,
                            height: 15,
                          )
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    const SizedBox(
                      width: 326,
                      height: 47,
                      child: Text(
                        "We have restocked our pharmacy and new drugs are now available for sale.",
                        style: TextStyle(
                            fontWeight: FontWeight.w500, fontSize: 16),
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Container(
                      width: 119,
                      height: 37,
                      decoration: BoxDecoration(
                          color: Colors.blue[50],
                          border: Border.all(color: Colors.blue),
                          borderRadius: BorderRadius.circular(12)),
                      child: Padding(
                        padding: const EdgeInsets.only(left: 12),
                        child: Row(
                          children: [
                            const Text(
                              "View details",
                              style: TextStyle(
                                  fontSize: 12,
                                  color: Colors.blue,
                                  fontWeight: FontWeight.bold),
                            ),
                            const SizedBox(
                              width: 4,
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
                padding: const EdgeInsets.symmetric(horizontal: 4),
                child: Container(
                  width: 410,
                  height: 10,
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
