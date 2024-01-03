import 'package:flutter/material.dart';

import 'ott6appbarmenuinformation.dart';



class ottlogoutf extends StatefulWidget {
  const ottlogoutf({super.key});

  @override
  State<ottlogoutf> createState() => _ottlogoutfState();
}

class _ottlogoutfState extends State<ottlogoutf> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
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
          child: Text("Logout",
            style: TextStyle(color: Colors.black),
          ),
        ),
      ),

    );
  }
}
