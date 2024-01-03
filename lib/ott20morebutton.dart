import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';

import 'ott16botnavi.dart';
import 'ott22clsimage.dart';



class ottmorbutt extends StatefulWidget {
  const ottmorbutt({super.key});

  @override
  State<ottmorbutt> createState() => _ottmorbuttState();
}

class _ottmorbuttState extends State<ottmorbutt> {

  bool _switch = false;
  ThemeData _dark = ThemeData(brightness: Brightness.dark);
  ThemeData _light = ThemeData(brightness: Brightness.light);





  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: _switch ? _dark : _light,
      home: Scaffold(
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
          Center(
            child: Text("Top 10 All Shows",
            ),
          ),
          actions: [
            Switch(value: _switch, onChanged: (_newvalue){
              setState(() {
                _switch = _newvalue;
              });
            })

          ],
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [

              ///Top 10 Trending Near You

              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    AnimatedTextKit(
                        animatedTexts: [
                          WavyAnimatedText("Top 10 Trending Near You",
                            textStyle:
                            TextStyle(
                              fontSize: 20,),),
                        ]
                    ),

                  ],
                ),
              ),


              Container(
                height: 270,
                //height: MediaQuery.of(context).size.height * .15,
                width: MediaQuery.of(context).size.width *1,
                // color: Color(0xff0f0617),
                child:
                GridView.builder(
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 3,
                    mainAxisSpacing: 1,
                    crossAxisSpacing: 10,
                  ),
                  padding: EdgeInsets.all(10),
                  itemCount: 6,
                  itemBuilder: (context,index) {
                    return Container(
                      height: 5,

                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            height: 100,
                            width:  200,
                            child: Image(image: AssetImage(o1[index].image,),
                              fit: BoxFit.fill,
                            ),
                          ),

                        ],
                      ),
                    );
                  },
                ),
              ),


              ///Top 10 Ticket Show


              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    AnimatedTextKit(
                        animatedTexts: [
                          WavyAnimatedText("Top 10 Ticket Show",
                            textStyle:
                            TextStyle(
                              fontSize: 20,),),
                        ]
                    ),
                  ],
                ),
              ),


              Container(
                height: 270,
                //height: MediaQuery.of(context).size.height * .15,
                width: MediaQuery.of(context).size.width *1,
                // color: Color(0xff0f0617),
                child:
                GridView.builder(
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 3,
                    mainAxisSpacing: 1,
                    crossAxisSpacing: 10,
                  ),
                  padding: EdgeInsets.all(10),
                  itemCount: 6,
                  itemBuilder: (context,index) {
                    return Container(
                      height: 5,

                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            height: 100,
                            width:  200,
                            child: Image(image: AssetImage(o5[index].image,),
                              fit: BoxFit.fill,
                            ),
                          ),

                        ],
                      ),
                    );
                  },
                ),
              ),


              ///Top 10 Malayalam movie

              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    AnimatedTextKit(
                        animatedTexts: [
                          WavyAnimatedText("Top 10 Kids Shows",
                            textStyle:
                            TextStyle(
                              fontSize: 20,),),
                        ]
                    ),
                  ],
                ),
              ),


              Container(
                height: 270,
                //height: MediaQuery.of(context).size.height * .15,
                width: MediaQuery.of(context).size.width *1,
                // color: Color(0xff0f0617),
                child:
                GridView.builder(
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 3,
                    mainAxisSpacing: 1,
                    crossAxisSpacing: 10,
                  ),
                  padding: EdgeInsets.all(10),
                  itemCount: 6,
                  itemBuilder: (context,index) {
                    return Container(
                      height: 5,

                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            height: 100,
                            width:  200,
                            child: Image(image: AssetImage(o6[index].image,),
                              fit: BoxFit.fill,
                            ),
                          ),

                        ],
                      ),
                    );
                  },
                ),
              ),


              ///Top 10 Web Series


              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    AnimatedTextKit(
                        animatedTexts: [
                          WavyAnimatedText("Top 10 Web Series",
                            textStyle:
                            TextStyle(
                              fontSize: 20,),),
                        ]
                    ),
                  ],
                ),
              ),


              Container(
                height: 270,
                //height: MediaQuery.of(context).size.height * .15,
                width: MediaQuery.of(context).size.width *1,
                // color: Color(0xff0f0617),
                child:
                GridView.builder(
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 3,
                    mainAxisSpacing: 1,
                    crossAxisSpacing: 10,
                  ),
                  padding: EdgeInsets.all(10),
                  itemCount: 6,
                  itemBuilder: (context,index) {
                    return Container(
                      height: 5,

                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            height: 100,
                            width:  200,
                            child: Image(image: AssetImage(o7[index].image,),
                              fit: BoxFit.fill,
                            ),
                          ),

                        ],
                      ),
                    );
                  },
                ),
              ),


              ///Top 10 Hindi Movie


              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    AnimatedTextKit(
                        animatedTexts: [
                          WavyAnimatedText("Top Languages Shows",
                            textStyle:
                            TextStyle(
                              fontSize: 20,),),
                        ]
                    ),
                    // SizedBox(width: 150,),
                    // Icon(Icons.cabin)
                  ],
                ),
              ),


              Container(
                height: 270,
                //height: MediaQuery.of(context).size.height * .15,
                width: MediaQuery.of(context).size.width *1,
                // color: Color(0xff0f0617),
                child:
                GridView.builder(
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 3,
                    mainAxisSpacing: 1,
                    crossAxisSpacing: 10,
                  ),
                  padding: EdgeInsets.all(10),
                  itemCount: 6,
                  itemBuilder: (context,index) {
                    return Container(
                      height: 5,

                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            height: 100,
                            width:  200,
                            child: Image(image: AssetImage(o8[index].image,),
                              fit: BoxFit.fill,
                            ),
                          ),

                        ],
                      ),
                    );
                  },
                ),
              ),





            ],
          ),
        ),

      ),
    );
  }
}
