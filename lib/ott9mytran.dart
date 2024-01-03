import 'package:flutter/material.dart';

import 'ott6appbarmenuinformation.dart';



class otttranc extends StatefulWidget {
  const otttranc({super.key});

  @override
  State<otttranc> createState() => _otttrancState();
}

class _otttrancState extends State<otttranc> {
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
                context, MaterialPageRoute(builder: (context) => ott6menu()));
          },
        ),
        title:
        Center(
          child: Text("My Transaction",
            style: TextStyle(color: Colors.black),
          ),
        ),
      ),


      body: Column(
        children: [SizedBox(
        height: 400,
      ),
      Center(child:
      Text("No Transaction",
        style: TextStyle(color: Colors.grey,fontSize: 20),
      ),
      ),
        ]
      ),
    );
  }
}
