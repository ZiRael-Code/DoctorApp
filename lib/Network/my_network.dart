import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class MyNetwork extends StatefulWidget {
  const MyNetwork({super.key});

  @override
  State<MyNetwork> createState() => _MyNetworkState();
}

class _MyNetworkState extends State<MyNetwork> {
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
                      borderRadius: BorderRadius.only(
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
                              Text(
                                "My Network",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white,
                                    fontSize: 20),
                              ),
                              Container(
                                width: 45,
                                height: 45,
                                decoration: BoxDecoration(
                                  color: Colors.blue[400],
                                  shape: BoxShape.circle,
                                ),
                                child:
                                    Image.asset("assets/images/whitedots.png"),
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
                                    CircleAvatar(
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
                                          Text(
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
                            SizedBox(
                              width: 300,
                              child: Divider(
                                color: Colors.grey.shade200,
                              ),
                            ),
                            Container(
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  Container(
                                    width: 80,
                                    child: Row(
                                      children: [
                                        Text(
                                          "55",
                                          style: TextStyle(color: Colors.blue),
                                        ),
                                        SizedBox(
                                          width: 10,
                                        ),
                                        Text("Members"),
                                      ],
                                    ),
                                  ),
                                  Container(
                                    width: 1,
                                    height: 20,
                                    decoration:
                                        BoxDecoration(color: Colors.grey),
                                  ),
                                  Container(
                                    width: 80,
                                    child: Row(
                                      children: [
                                        Text(
                                          "22",
                                          style: TextStyle(color: Colors.blue),
                                        ),
                                        SizedBox(
                                          width: 10,
                                        ),
                                        Text("Posts"),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  )
                ],
              ),
              SizedBox(
                height: 40,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 28),
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
              SizedBox(
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
                                            const EdgeInsets.only(left: 15),
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
                                  const SizedBox(
                                    height: 4,
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(right: 46),
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
                    Container(
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
                            Text(
                              "View details",
                              style: TextStyle(
                                  fontSize: 12,
                                  color: Colors.blue,
                                  fontWeight: FontWeight.bold),
                            ),
                            SizedBox(
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
                                        padding:
                                            const EdgeInsets.only(left: 15),
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
                                  const SizedBox(
                                    height: 4,
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(right: 46),
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
                    Container(
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

                    Container(
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
                            Text(
                              "View details",
                              style: TextStyle(
                                  fontSize: 12,
                                  color: Colors.blue,
                                  fontWeight: FontWeight.bold),
                            ),
                            SizedBox(
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
                                            const EdgeInsets.only(left: 15),
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
                                  const SizedBox(
                                    height: 4,
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(right: 46),
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
                    Container(
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
                            Text(
                              "View details",
                              style: TextStyle(
                                  fontSize: 12,
                                  color: Colors.blue,
                                  fontWeight: FontWeight.bold),
                            ),
                            SizedBox(
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
