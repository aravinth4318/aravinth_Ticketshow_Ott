import 'package:flutter/material.dart';

import 'ott16botnavi.dart';
import 'ott5homepage.dart';
import 'ott6appbarmenuinformation.dart';



class ottfav extends StatefulWidget {
  const ottfav({super.key});

  @override
  State<ottfav> createState() => _ottfavState();
}

class _ottfavState extends State<ottfav> {

  bool _switch = false;
  ThemeData _dark = ThemeData(brightness: Brightness.dark);
  ThemeData _light = ThemeData(brightness: Brightness.light);



  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: _switch ? _dark : _light,
      home: Scaffold(
        //backgroundColor: Color(0xff0f0617),
        appBar:
        AppBar(
          //backgroundColor: Color(0xff0f0617),
          leading:
          GestureDetector(
            child: Icon(
              Icons.arrow_back_ios_rounded,
              ),
            onTap: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => ottbotcur()));
            },
          ),
          title:
          Center(
            child: Text("Your Favorite",),
          ),
            actions: [
              Switch(value: _switch, onChanged: (_newvalue){
                setState(() {
                  _switch = _newvalue;
                });
              })
            ]),
        body: Column(
            children: [SizedBox(
              height: 400,
            ),
              Center(child:
              Text("No Favorite",
                style: TextStyle(fontSize: 20),
              ),
              ),
            ]
        ),
        ),
    );

  }
}
