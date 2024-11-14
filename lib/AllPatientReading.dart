
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(AllPatientReading());
}

class AllPatientReading extends StatefulWidget{
_AllPatientState createState() => _AllPatientState();
}

class _AllPatientState extends State<AllPatientReading>{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: Scaffold(
      appBar: AppBar(
        leading: Container(
          width: 50,
            height: 50,
            decoration: BoxDecoration(
              color: Color(0xffE5E5E5),
              shape: BoxShape.circle
            ),
            child:
        Icon(Icons.arrow_back_ios_new, color: Color(0xff666666),)
        ),
        title: Text('All Patient\'s Reading'),
        centerTitle: true,
      ),
      body:Padding(
          padding: EdgeInsets.only(left: 16, right: 16, top: 25)
            ,child: Column(
          children: [
            Row(
              children: [
                Container(
                  width: 10,
                  height: 10,
                  decoration: BoxDecoration(
                      color: Color(0xffE5E5E5),
                      shape: BoxShape.circle
                  ),
                ),
                 SizedBox(width: 8,),
                 Text('Unchecked'),
                SizedBox(width: 8,),
                Container(
                  width: 10,
                  height: 10,
                  decoration: BoxDecoration(
                      color: Colors.green,
                      shape: BoxShape.circle
                  ),
                ),
                 SizedBox(width: 8,),
                 Text('Checked')

              ],
            )
        ],
      ),

      )
      )
    );
  }




}