import 'package:flutter/material.dart';
import 'ott6appbarmenuinformation.dart';


class ottsett extends StatefulWidget {
  const ottsett({super.key});

  @override
  State<ottsett> createState() => _ottsettState();
}

class _ottsettState extends State<ottsett> {

  bool _switch = false;
  bool _switchh = false;
  bool _switchk = false;
  ThemeData _dark = ThemeData(brightness: Brightness.dark);
  ThemeData _light = ThemeData(brightness: Brightness.light);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: _switch ? _dark : _light,
      home: Scaffold(
        appBar: AppBar(
          leading:
          GestureDetector(
            child: Icon(
              Icons.arrow_back_ios_rounded,),
            onTap: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => ott6menu()));
            },
          ),
          title:
          Center(
            child: Text("Settings"),
            ),
          ),
        body:

        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Text("Dark & Light Theme",
                    style: TextStyle(fontSize: 15),
                  ),
                  SizedBox(width: 100,),
                  Container(
                      height: 20,
                      width:  20,
                      child: FittedBox(
                        child: Switch(value: _switch, onChanged: (_newvalue){
                          setState(() {
                            _switch = _newvalue;
                          });
                        }),
                      )
                  )


                ],
              ),

              SizedBox(height: 30,),

              Text("Download",
                style: TextStyle(fontSize: 15),
              ),

              SizedBox(height: 30,),

              Row(
                children: [
                  Text("Download over Wifi only",
                    style: TextStyle(fontSize: 10),
                  ),

                  SizedBox(width: 150,),

                  Container(
                      height: 20,
                      width:  20,
                      child: FittedBox(
                        child: Switch(value: _switchh, onChanged: (_newvalue){
                          setState(() {
                            _switchh = _newvalue;
                          });
                        }),
                      )
                  )
                ],
              ),
              SizedBox(height: 30,),

              Text("Languge",
                style: TextStyle(fontSize: 15),
              ),
              SizedBox(height: 30,),

              Text("Display Language",
                style: TextStyle(fontSize: 10),
              ),
              SizedBox(height: 30,),

              Text("Video Streaming",
                style: TextStyle(fontSize: 15),
              ),

              SizedBox(height: 30,),
              Row(
                children: [
                  Text("Streaming over Wifi only",
                    style: TextStyle(fontSize: 10),
                  ),
                  SizedBox(width: 150,),
                  Container(
                      height: 20,
                      width:  20,
                      child: FittedBox(
                        child: Switch(value: _switchk, onChanged: (_newvalue){
                          setState(() {
                            _switchk = _newvalue;
                          });
                        }),
                      )
                  )

                ],
              ),




            ],
          ),
        ),

      )


    );
  }
}
