import 'package:flutter/material.dart';

import 'ott6appbarmenuinformation.dart';



class otthelp extends StatefulWidget {
  const otthelp({super.key});

  @override
  State<otthelp> createState() => _otthelpState();
}

class _otthelpState extends State<otthelp> {
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
          child: Text("Help Center",
            style: TextStyle(color: Colors.black),
          ),
        ),
      ),

    );
  }
}
