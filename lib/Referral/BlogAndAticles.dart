import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';


void main(){
  runApp(const BlogAndAticles());
}

class BlogAndAticles extends StatefulWidget {
  const BlogAndAticles({super.key});
  @override
  _BlogAndArticlesScreen createState() => _BlogAndArticlesScreen();
}

class _BlogAndArticlesScreen extends  State<BlogAndAticles> {
  String? _selectedValue;
  List<String> pin = [];

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
                      'Blog & Articles',
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

            body: SingleChildScrollView(
            child: Column(
              children: [
              blog(name: "Rayoo Rayoo",
                time: "11:20am",
                date: "9th Sept, 2022",
                profilePath: "assets/images/profile.png",
                title: "BEST PRACTICES TO REDUCE RISK OF PROSTATE CANCER IN MEN.",
                description:
                """1.) Reduce fat intake. Eat less trans fats and saturated fats. Focus on healthy fats such as omega-3 fatty acids from nuts, seeds and fish.

2.) Avoid charred meat. Charred meat, from frying or grilling at high temperatures, may produce a chemical compound that leads to cancer....""",
                views: "23"),


                blog(name: "Rayoo Rayoo",
                time: "11:20am",
                date: "9th Sept, 2022",
                profilePath: "assets/images/profile.png",
                title: "BEST PRACTICES TO REDUCE RISK OF PROSTATE CANCER IN MEN.",
                description:
                """1.) Reduce fat intake. Eat less trans fats and saturated fats. Focus on healthy fats such as omega-3 fatty acids from nuts, seeds and fish.

2.) Avoid charred meat. Charred meat, from frying or grilling at high temperatures, may produce a chemical compound that leads to cancer....""",
                views: "23"),


                blog(name: "Rayoo Rayoo",
                time: "11:20am",
                date: "9th Sept, 2022",
                profilePath: "assets/images/profile.png",
                title: "BEST PRACTICES TO REDUCE RISK OF PROSTATE CANCER IN MEN.",
                description:
                """1.) Reduce fat intake. Eat less trans fats and saturated fats. Focus on healthy fats such as omega-3 fatty acids from nuts, seeds and fish.

2.) Avoid charred meat. Charred meat, from frying or grilling at high temperatures, may produce a chemical compound that leads to cancer....""",
                views: "23"),
          ],
            ),
            ),
    ),
    );
  }









  Widget blog({
    required String name,
    required String time,
    required String date,
    required String profilePath,
    required String title,
    required String description,
    required String views
}){
    return Container(
      margin: const EdgeInsets.only(top: 10),
      child: Column(
      children: [
        Padding(padding: const EdgeInsets.all(30),
          child:
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // Profile Picture
                  CircleAvatar(
                    radius: 25,
                    backgroundImage: AssetImage(profilePath),
                  ),
                  const SizedBox(width: 10),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          name,
                          style: const TextStyle(
                            fontSize: 14,
                            color: Colors.black,
                          ),
                        ),
                        const SizedBox(height: 5),
                        Row(
                          children: [
                            Text(
                              time,
                              style: const TextStyle(
                                fontSize: 12,
                                color: Colors.grey,
                              ),
                            ),
                            const SizedBox(width: 10),
                            Text(
                              date,
                              style: const TextStyle(
                                fontSize: 12,
                                color: Colors.grey,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  const Icon(Icons.more_vert),
                ],
              ),
              const SizedBox(height: 16),
              // Bold Title Text
              Text(
                title,
                style: const TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 12),
              Container(
                child: Text(description,
                  style: const TextStyle(fontSize: 14, color: Colors.black),
                  maxLines: 7, // Limit to a max of 10 lines
                  overflow: TextOverflow.ellipsis, // Add "..." if it overflows
                ),
              ),
              const SizedBox(height: 12), // Space between description and "See More"
              // "See More" text
              GestureDetector(
                onTap: () {
                  // Implement action for See More
                },
                child: const Text(
                  'See More',
                  style: TextStyle(
                    fontSize: 14,
                    color: Colors.blue,
                  ),
                ),
              ),
              const SizedBox(height: 25),
              SvgPicture.asset("assets/images/line.svg"),
              const SizedBox(height: 16), // Space between "See More" and bottom row
              // Row with eye icon, view count, and text
              Row(
                children: [
                  const Icon(Icons.remove_red_eye, size: 23, color: Colors.black), // Eye icon
                  const SizedBox(width: 8), // Space between icon and views count
                  Text(
                    views,
                    style: const TextStyle(fontSize: 14, color: Colors.black),
                  ),
                  const SizedBox(width: 4),
                  const Text(
                    'Views',
                    style: TextStyle(fontSize: 14, color: Colors.black),
                  ),
                ],
              ),
            ],
          ),
        ),
        Container(
          height: 10,
          width: MediaQuery.of(context).size.width,
          decoration: BoxDecoration(
              color: Colors.grey.withOpacity(0.5)
          ),
        ),
      ],
    ),
    );
}
}