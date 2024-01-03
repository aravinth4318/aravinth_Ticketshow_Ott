import 'package:flutter/material.dart';

import 'ott6appbarmenuinformation.dart';



class ottaboutus extends StatefulWidget {
  const ottaboutus({super.key});

  @override
  State<ottaboutus> createState() => _ottaboutusState();
}

class _ottaboutusState extends State<ottaboutus> {
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
          child: Text("About Us",
            style: TextStyle(color: Colors.black),
          ),
        ),
      ),

    );
  }
}
