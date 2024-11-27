import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';


void main(){
  runApp(const ArticlesPost());
}

class ArticlesPost extends StatefulWidget {
  const ArticlesPost({super.key});
  @override
  _ArticlesPostScreen createState() => _ArticlesPostScreen();
}

class _ArticlesPostScreen extends  State<ArticlesPost> {
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
                      'Articles Post',
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
                ),
              ),
              const SizedBox(height: 12),
             Center( child: GestureDetector(
                onTap: () {

                },
                child: Container(
                  padding: const EdgeInsets.all(8),
                decoration: BoxDecoration(
                  color: const Color(0xFFC4DCFF),
                  borderRadius: BorderRadius.circular(12),
                  border: Border.all(color: const Color(0xffC4DCFF), width: 0.5),
                ),
               child: const Row(children: [
                  Text(
                    'See source link',
                    style: TextStyle(
                      fontSize: 14,
                      color: Colors.blue,
                    ),
                  ),
                  SizedBox(width: 5),
                  Icon(Icons.arrow_forward, color: Colors.blue,),
                ],),
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