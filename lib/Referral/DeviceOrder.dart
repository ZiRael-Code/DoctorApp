import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';


void main(){
  runApp(const DeviceOrder());
}

class DeviceOrder extends StatefulWidget {
  const DeviceOrder({super.key});
  @override
  _DeviceOrderState createState() => _DeviceOrderState();
}

class _DeviceOrderState extends  State<DeviceOrder> with SingleTickerProviderStateMixin {
  late final TabController _tabController = TabController(length: 2, vsync: this);


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
                    const Text(
                      'Device Order',
                      style: TextStyle(
                          fontSize: 20,
                          fontStyle: FontStyle.normal
                      ),
                    ),
                  ),
                  const Spacer(),

                ],
              ),
            ),
            body:
            Container(
                padding: const EdgeInsets.only(bottom: 30, left: 15, right: 15),
                child:
                Align(
                  child:
                  Column(
                    children: [
                      const SizedBox(height: 35,),
                      Container(
                        height: 50,
                        padding: const EdgeInsets.all(4),
                        width: double.infinity,
                        decoration: BoxDecoration(
                            color: const Color(0xffE0E0E0),
                            borderRadius: BorderRadius.circular(50)
                        ),
                        child:SizedBox(
                          child:
                          TabBar(
                            controller: _tabController,
                            indicatorSize: TabBarIndicatorSize.tab,
                            indicator: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(30),
                            ),
                            labelColor: Colors.black,
                            unselectedLabelColor: const Color(0xff4F4F4F),
                            tabs: const [
                              Tab(text: "Current Orders"),
                              Tab(text: "Order a Device"),
                            ],
                          ),
                        ),
                      ),
                      const SizedBox(height: 10,),
                      Expanded(
                        child: TabBarView(
                          controller: _tabController,
                          children: [
                            Center(
                                child:
                                currentOrder()
                            ),
                            Center(
                                child: orderADevice()
                            ),
                          ],
                        ),
                      ),







                    ],
                  ),
                ))));
  }

  currentOrder(){
    return Column(
      children: [
        const SizedBox(height: 25,),
        order(
            deviceName: 'Wellue BP2 connect device ',
            isShipped: 'Arriving on',
            text: '25th June 2022'),
        const SizedBox(height: 20,),
        order(
            deviceName: 'Wellue BP2 connect device ',
            text: '25th June 2022'),

        const SizedBox(height: 20,),
        order(
            deviceName: 'Wellue BP2 connect device ',
            text: '25th June 2022'),
      ],
    );
  }

  order({
    required deviceName,
    isShipped,
    required String text
  }){
    return Container(
      child:   Container(
        padding: const EdgeInsets.all(20),
        width: double.infinity,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12),
            border: Border.all( color: Colors.black.withOpacity(0.09))
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SvgPicture.asset('assets/images/dev.svg'),
            const SizedBox(width: 20,),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(deviceName,maxLines: 2, style: const TextStyle(fontSize: 16)),
                const SizedBox(width: 26,),
                isShipped == null ? Container(child: const SizedBox(height: 10,),) :Column(children: [
                  const SizedBox(height:  10,),
                  Text(isShipped, style: const TextStyle(fontSize: 12, color: Colors.grey)),
                ],),

                Align(alignment: Alignment.centerLeft,
                    child: Text(text, style: const TextStyle(color: Colors.blue),))
              ],
            )
          ],
        ),
      ),
    );
  }

  orderADevice(){
    return  SingleChildScrollView( child: Column(
      children: [
        const SizedBox(height: 25,),
        recomendDevice(
          name: "Wellue BP2 Connect Device",
          measures: "Measures 1 vital",
          image: "assets/images/printer.svg",
          prices: "N25,000",
        ),
        const SizedBox(height: 15,),
        recomendDevice(
          name: "Wellue BP2 Connect Device",
          measures: "Measures 1 vital",
          image: "assets/images/printer.svg",
          prices: "N25,000",
        ),

        const SizedBox(height: 15,),
        recomendDevice(
          name: "Wellue BP2 Connect Device",
          measures: "Measures 1 vital",
          image: "assets/images/printer.svg",
          prices: "N25,000",
        ),

      ],
    )
    );
  }

  recomendDevice({
    required String name,
    required String measures,
    required String image,
    required String prices,
  }) {
    return Container(
      padding: const EdgeInsets.all(18),
      width: double.infinity,
      decoration: BoxDecoration(
        border: Border.all(
          color: Colors.black.withOpacity(0.1),
          width: 1,
        ),
        borderRadius: BorderRadius.circular(20),
      ),
      child: Row(
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  name,
                  style: const TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                  ),
                ),
                const SizedBox(height: 8),
                Container(
                  margin: const EdgeInsets.only(left: 10),
                  padding: const EdgeInsets.all(8),
                  decoration: BoxDecoration(
                    color: Colors.grey.withOpacity(0.2),
                    borderRadius: BorderRadius.circular(7),
                  ),
                  child: Text(measures),
                ),
                const SizedBox(height: 8),
                Text(
                  prices,
                  style: const TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.blue,
                    fontSize: 20,
                  ),
                ),
                const SizedBox(height: 16),

                SizedBox(
                  width: 134,
                  child: ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.blue,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12), // Border radius of 12
                      ),
                    ),
                    child: const Text(
                      'Order Now',
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(height: 15),
          Container(
            padding: const EdgeInsets.all(12),
            height: 110,
            width: 110,
            decoration: BoxDecoration(
              color: Colors.grey.withOpacity(0.20),
              borderRadius: BorderRadius.circular(50),
            ),
            child: SvgPicture.asset(image),
          ),
        ],
      ),
    );
  }

}