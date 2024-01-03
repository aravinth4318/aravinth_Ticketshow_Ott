import 'package:flutter/material.dart';

import 'ott6appbarmenuinformation.dart';



class ottmysub extends StatefulWidget {
  const ottmysub({super.key});

  @override
  State<ottmysub> createState() => _ottmysubState();
}

class _ottmysubState extends State<ottmysub> {
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
          child: Text("My Subscription",
            style: TextStyle(color: Colors.black),
          ),
        ),
      ),

      
      body: Column(
        children: [SizedBox(
          height: 400,
        ),
          Center(child:
          Text("No active Subscription",
            style: TextStyle(color: Colors.grey,fontSize: 20),
          ),
          ),

          SizedBox(height: 300,),


          Container(
            height: 50,
            width: 350,
            child: ElevatedButton(
              onPressed: (){},
              child:
              Text("Buy Plan",
                style:
                TextStyle(color: Colors.black,fontSize: 20),
              ),style: OutlinedButton.styleFrom(
              backgroundColor: Colors.green,
              shape: StadiumBorder(),
            ),
            ),
          ),
        ],
      ),

    );
  }
}
