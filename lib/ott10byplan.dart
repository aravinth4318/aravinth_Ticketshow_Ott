import 'package:flutter/material.dart';
import 'ott16botnavi.dart';
import 'ott5homepage.dart';
import 'ott6appbarmenuinformation.dart';



class ottbyplan extends StatefulWidget {
  const ottbyplan({super.key});

 






  @override
  State<ottbyplan> createState() => _ottbyplanState();
}

class _ottbyplanState extends State<ottbyplan> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:
      AppBar(
        leading:
        GestureDetector(
          child: Icon(
            Icons.arrow_back_ios_rounded,
            color: Colors.black,),
          onTap: () {
            Navigator.push(
                context, MaterialPageRoute(builder: (context) => ottbotcur()));
          },
        ),
        title:
        Center(
          child: Text("By Plan",
            style: TextStyle(color: Colors.black),
          ),
        ),
      ),



      body: Column(
          children: [SizedBox(
            height: 400,
          ),
            Center(child:
            Text("No By Plan",
              style: TextStyle(color: Colors.grey,fontSize: 20),
            ),
            )
          ]
      ),
    );
  }
}
