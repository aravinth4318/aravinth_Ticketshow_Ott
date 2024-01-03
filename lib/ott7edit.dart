import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'ott6appbarmenuinformation.dart';



class ottedit extends StatefulWidget {
  const ottedit({super.key});

  @override
  State<ottedit> createState() => _otteditState();
}

class _otteditState extends State<ottedit> {

  DateTime _dateTime = DateTime.now();

  void _showDatePicker(){
    showDatePicker(
        context: context,
        initialDate: DateTime.now(),
        firstDate: DateTime(2000),
        lastDate: DateTime(2050),
    ).then((value) {
      setState(() {
        _dateTime = value!;
      });
    });
  }





  @override
  Widget build(BuildContext context) {
    return
      MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(primarySwatch: Colors.deepOrange),
        home: Scaffold(
          appBar:
          AppBar(
            leading:
            GestureDetector(
              child: Icon(Icons.arrow_back_ios,color: Colors.black,),
              onTap: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (context) => ott6menu()));
              },
            ),
            title:
            Center(child: Text("Your Profile")),
          ),
          body:
          Padding(
            padding: const EdgeInsets.all(1.0),
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextFormField(
                    style: TextStyle(fontSize: 15,),
                    decoration: InputDecoration(
                      labelStyle: TextStyle(
                          fontSize: 20
                      ),
                        labelText: "Edit Your Name",),
                  ),
                ),

                SizedBox(height: 25,),

                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextFormField(
                    style: TextStyle(fontSize: 15
                  ),
                    decoration: InputDecoration(
                      labelStyle: TextStyle(fontSize: 20),
                      labelText: "Your Nick Name",),
                  ),
                ),

                SizedBox(height: 25,),

                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    children: [

                      TextFormField(
                        onTap: _showDatePicker,
                        decoration: InputDecoration(
                            labelText:  _dateTime.toString(),suffixIcon: Icon(Icons.calendar_month)
                        ),
                      ),

                      SizedBox(height: 25,),



                    ],
                  ),
                ),



              ],
            ),
          ),
        ),
      );
  }
}


