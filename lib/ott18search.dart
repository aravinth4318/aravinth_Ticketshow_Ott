import 'package:flutter/material.dart';

import 'ott16botnavi.dart';
import 'ott5homepage.dart';



class ottsear extends StatefulWidget {
  const ottsear({super.key});

  @override
  State<ottsear> createState() => _ottsearState();
}

class _ottsearState extends State<ottsear> {


  // bool _switch = false;
  // ThemeData _dark = ThemeData(brightness: Brightness.dark);
  // ThemeData _light = ThemeData(brightness: Brightness.light);










  @override
  Widget build(BuildContext context) {
    return MaterialApp(
       debugShowCheckedModeBanner: false,
      // theme: _switch ? _dark : _light,
      home: Scaffold(
        //backgroundColor: Color(0xff0f0617),
        appBar: AppBar(
          //backgroundColor: Color(0xff0f0617),
          leading:
          GestureDetector(
            child: Icon(
              Icons.arrow_back_ios_rounded,
              ),
            onTap: () {
              Navigator.push(
                  context, MaterialPageRoute
                (builder: (context) => ottbotcur()));
            },
          ),

          title:

            TextFormField(
            decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(200)
                ),
              hintText: 'Movies,Shows More',
              prefixIcon: Icon(Icons.search),
              suffixIcon: Icon(Icons.mic),
            ),
                      ),

            // actions: [
            //   Switch(value: _switch, onChanged: (_newvalue){
            //     setState(() {
            //       _switch = _newvalue;
            //     });
            //   }),
            // ]
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
            children: [

              Center(child:
              Text("No Searching",
                style: TextStyle(fontSize: 20),
              ),
              ),
              // AnimatedContainer(
              //
              //
              //   duration: Duration(milliseconds: 300),
              //   width: _folded ? 56 : 200,
              //   decoration: BoxDecoration(
              //       borderRadius: BorderRadius.circular(35),
              //     color: Colors.white,
              //     boxShadow: kElevationToShadow[10],
              //   ),
              //   child: Row(
              //     children: [
              //       Expanded(
              //   child: Container(
              //         padding: EdgeInsets.only(left: 50),
              //         child: _folded ? TextFormField(
              //           decoration: InputDecoration(
              //             labelText: 'Search Text',
              //             labelStyle: TextStyle(color: Colors.cyan),
              //             border: InputBorder.none
              //           ),
              //         )
              //         : null,
              //       )
              //       ),
              //       AnimatedContainer(duration: Duration(milliseconds: 100),
              //         child: InkWell(
              //           child: Padding(
              //             padding: const EdgeInsets.all(15),
              //             child: Icon(
              //               _folded ? Icons.search : Icons.close,
              //               color: Colors.black,
              //             ),
              //           ),
              //           onTap: (){
              //             setState(() {
              //               _folded = !_folded;
              //             });
              //           },
              //         ),
              //
              //       ),
              //
              //     ],
              //   ),
              //
              //
              // ),
            ]
        ),
        ),
    );

  }
}
