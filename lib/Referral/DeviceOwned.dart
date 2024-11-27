import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';


void main(){
  runApp(const DeviceOwned());
}

class DeviceOwned extends StatefulWidget {
  const DeviceOwned({super.key});
  @override
  _DeviceOwnedScreen createState() => _DeviceOwnedScreen();
}

class _DeviceOwnedScreen extends  State<DeviceOwned> {
  String? _selectedValue;

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
                      'Devices owned',
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
                child:
                Container(
                    padding: const EdgeInsets.only(bottom: 30, left: 15, right: 15),
                    child:
                    Align(
                        child:
                        Column(
                            children: [
                              const SizedBox(height: 30),
                              Container(
                                alignment: Alignment.center,
                                width: MediaQuery.of(context).size.width * 0.58,
                                child:
                                const Align(child: Text("View history of any vitals by directly tapping on their icons. ", textAlign: TextAlign.center,
                                  style: TextStyle(
                                    fontSize: 14,
                                  ),
                                ),
                                ),
                              ),const SizedBox(height: 20,),

                              Wrap(children: [
                                devices(
                                    name: "BP2 Connect",
                                    imagePath: "assets/images/dev.svg"
                                ),
                                const SizedBox(width: 20,),
                                devices(
                                    name: "Device 2",
                                    imagePath: "assets/images/dev.svg"
                                ),
                                devices(
                                    name: "Device 3",
                                    imagePath: "assets/images/dev.svg"
                                ),
                              ],),

                            ]))))
        ));
  }

  devices({
    required String name,
    required String imagePath
  }) {
    return Container(
      child: Column(children: [
        Container(
          width: 143,
          height: 143,
          decoration: BoxDecoration(
              shape: BoxShape.circle,
              border: Border.all(width: 1, color: Colors.black.withOpacity(0.2))
          ),
          child:
          Center(child: SvgPicture.asset(imagePath),),
        ),
        const SizedBox(height: 10,),
        Text(name, style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
        const SizedBox(height: 20, ),
      ],),
    );
  }


}