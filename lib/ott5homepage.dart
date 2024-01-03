import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';
import 'ott10byplan.dart';
import 'ott15movieplay.dart';
import 'ott19notifi.dart';
import 'ott20morebutton.dart';
import 'ott22clsimage.dart';



class otthomepage extends StatefulWidget {
  const otthomepage({super.key});

  @override
  State<otthomepage> createState() => _otthomepageState();
}

class _otthomepageState extends State<otthomepage> {
  int currentposition=0;
  int _index = 0 ;


  bool _switch = false;
  ThemeData _dark = ThemeData(brightness: Brightness.dark);
  ThemeData _light = ThemeData(brightness: Brightness.light);


  final pages = [
    Center(child: Text("s"),),
    Center(child: Text("s"),),
    Center(child: Text("s"),),
    Center(child: Text("s"),),
  ];

  void tap(a)
  {
    setState(() {
      _index = a;
    });
  }


  @override
  Widget build(BuildContext context) {

    return

         SafeArea(
           child: MaterialApp(
             debugShowCheckedModeBanner: false,
             theme: _switch ? _dark : _light,
             home: Scaffold(
              // backgroundColor: Color(0xff0f0617),
              body: DefaultTabController(
                length: 4,
           
              child:NestedScrollView(
                headerSliverBuilder:
                  (BuildContext context, bool innerBoxIsScrolled) {
                   return [SliverAppBar(
                   // backgroundColor: Color(0xff0f0617),


                     ///loading details




                     flexibleSpace:
                   Row(
                     children: [
                       Padding(
                         padding: const EdgeInsets.all(8.0),
                         child: CircleAvatar(
                           backgroundImage: AssetImage("assets/img/3.jpg"),),
                       ),
           
           
                       ///new Details
           
                       Container(
                         color: Colors.amber,
                         height: 30,
                         width: 100,
                         child:
                         GestureDetector(
                           onTap: () {
                             Navigator.push(
                                 context, MaterialPageRoute(builder: (context) => ottbyplan()));
                           },
           
           
           
           
           
                           child: Row(
                             children: [
                               Icon(
                                 Icons.workspace_premium,
                                 color: Colors.black,),
                               SizedBox(width: 5,),
                               Text("Buy Plan",
                                 style:
                                 TextStyle(color: Colors.black),
                               ),
           
                             ],
                           ),
                         ),
                       ),
           
                     ],
                   ),
                   ///search & noti icon
                   actions: [
                     Padding(
                       padding:  EdgeInsets.all(8.0),
                       child: GestureDetector(
           
                         child: Icon(Icons.notifications, size: 30,color: Colors.grey,
                         ),
                         onTap: () {
                           Navigator.push(
                               context, MaterialPageRoute(builder: (context) => ottnoti()));
                         },
           
           
           
           
                       ),
                     ),
                    Switch(value: _switch, onChanged: (_newvalue){
                      setState(() {
                        _switch = _newvalue;
                      });
                    })

                   ],
                   bottom: TabBar(labelColor: Colors.blue,
                     tabs: [
                       Tab(text: "All",icon: Icon(Icons.video_library),),
                       Tab(text: "Tv Shows",icon: Icon(Icons.tv),),
                       Tab(text: "Movies",icon: Icon(Icons.movie),),
                       Tab(text: "More",icon: Icon(Icons.more_horiz),),
                     ],
                   ),
                 )];
                  }, body:   TabBarView(
                children: [
                  SingleChildScrollView(
                    child: Column(
                      children: [
           
           
                        ///carouselSlider details
           
                        Container(
                          color: Colors.white,
                          height: MediaQuery.of(context).size.height * .25,
                          // width:  double.infinity,
                          width: MediaQuery.of(context).size.width *1,

                          child:   CarouselSlider.builder(
                              options: CarouselOptions(
                                aspectRatio: 50/9,
                                viewportFraction: 1,
                                initialPage: 0,
                                height: 200,
                                enableInfiniteScroll: true,
                                reverse: false,
                                autoPlay: true,
                                autoPlayInterval: Duration(seconds: 3),
                                autoPlayAnimationDuration: Duration(milliseconds: 800),
                                autoPlayCurve: Curves.fastOutSlowIn,
                                enlargeCenterPage: true,
                                enlargeFactor: 0.3,
                                onPageChanged: (index,reason){
                                  setState(() {
                                    currentposition=index;
                                  });
                                },
                                scrollDirection: Axis.horizontal,
                              ),
                              itemCount: o1.length,
                              itemBuilder: (BuildContext con,index,c)
                              {
                                return Container(
                                  //height: 100,
                                  height: MediaQuery.of(context).size.height * .25,
                                  width: MediaQuery.of(context).size.width *1,
                                  //width:  double.infinity,
                                  color: Colors.lightGreen,
                                  child: Image(image: AssetImage(o1[index].image),
                                    fit: BoxFit.fill,
                                  ),
                                );
                              }
                          ),
                        ),


           
                        ///carouselSlider dotindicator details
           
                        DotsIndicator(
                          dotsCount: o1.length,
                          position: currentposition,
                          decorator: DotsDecorator(
                            color: Colors.black87, // Inactive color
                            activeColor: Colors.amber,
                          ),
                        ),


                        ///list vive  uptext details  0 Recently Watching for You



                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Row(
                            children: [
                              AnimatedTextKit(animatedTexts: [
                                WavyAnimatedText("Recently Watching for You",
                                  textStyle:
                                  TextStyle(
                                    fontSize: 20,),),
                              ]
                              ),
                            ],
                          ),
                        ),

           
                        ///list vive details 0 Recently Watching for You
           
                        GestureDetector(
                          onTap: () {
                            Navigator.push(
                                context, MaterialPageRoute(
                                builder: (context) => ottvideo(ottvideoUrl: '',)));
                          },
                          child: Container(

                            height: MediaQuery.of(context).size.height * .25,
                            width: MediaQuery.of(context).size.width *1,
                            // color: Colors.white,
                            // height: 200,
                            // width:  double.infinity,

                            
                            // child: Positioned(left: 100,top: 100,
                            //   child: Icon(Icons.cabin_sharp,
                            //     color: Colors.amber,
                            //   ),
                            // ),
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                  image: AssetImage("assets/img/cs1.jpg"),
                                  fit: BoxFit.fill),),

                          ),
                        ),

           
           
                        ///list vive  uptext details  1 Trending Near You

                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Row(
                            children: [
                              AnimatedTextKit(
                                  animatedTexts: [
                                WavyAnimatedText("Trending Near You",
                                  textStyle:
                                  TextStyle(
                                    fontSize: 20,),),
                              ]
                              ),
                              SizedBox(width: 160,),
                              GestureDetector(
                                child: Text("More",
                                  style: TextStyle(fontSize: 15,),
                                ),
                                onTap: () {
                                  Navigator.push(
                                      context, MaterialPageRoute(builder: (context) => ottmorbutt()));
                                },
                              ),
                              GestureDetector(
                                onTap: () {
                                  Navigator.push(
                                      context, MaterialPageRoute(builder: (context) => ottmorbutt()));
                                },
                                  child: Icon(Icons.chevron_right_outlined,),),
                            ],
                          ),
                        ),
           
                        ///list vive details 1 Trending Near You
           
                        Container(
                          //decoration: BoxDecoration(border: Border.all()),
                          height: MediaQuery.of(context).size.height * .25,
                          width: MediaQuery.of(context).size.width *1,
                          child:  ListView.builder(
                              scrollDirection: Axis.horizontal,
                              itemCount: o2.length,
                              itemBuilder: (BuildContext con, index) {
                                return Column(
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.all(5.0),
                                        child: Stack(
                                          children: [
                                            Container(
                                            height:  MediaQuery.of(context).size.height *.20,
                                            width: MediaQuery.of(context).size.width *.28,
                                            decoration: BoxDecoration(
                                              image: DecorationImage(
                                                  image: AssetImage(o2[index].image),
                                                  fit: BoxFit.fill),
                                              borderRadius: BorderRadius.circular(20),
                                            ),
                                          ),
                                            Positioned(
                                                child: Shimmer.fromColors(
                                                  highlightColor: Colors.red,
                                                  baseColor: Colors.white,
                                                  child: Icon(Icons.favorite,
                                                    color: Colors.red,),
                                                ),
                                              right: 10,top: 5,),
                                       ] ),
                                ),
                                      //Text(o2[index].text),
                                    ]);
           
           
                              }),
                        ),
           
                        ///list vive  uptext details  2 Top 10 Ticket Show


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
                              SizedBox(width: 160,),
                              GestureDetector(
                                child: Text("More",
                                  style: TextStyle(fontSize: 15,),
                                ),
                                onTap: () {
                                  Navigator.push(
                                      context, MaterialPageRoute(builder: (context) => ottmorbutt()));
                                },
                              ),
                              GestureDetector(
                                onTap: () {
                                  Navigator.push(
                                      context, MaterialPageRoute(builder: (context) => ottmorbutt()));
                                },
                                child: Icon(Icons.chevron_right_outlined,),),
                            ],
                          ),
                        ),
           
           
           
                        ///list vive details  2 Top 10 Ticket Show
           
                        Container(
                          //decoration: BoxDecoration(border: Border.all()),
                          height: MediaQuery.of(context).size.height * .25,
                          width: MediaQuery.of(context).size.width *1,
                          child:  ListView.builder(
                              scrollDirection: Axis.horizontal,
                              itemCount: o3.length,
                              itemBuilder: (BuildContext con, index) {
                                return Column(
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.all(5.0),
                                        child: Stack(
                                          children: [
                                            Container(
                                            height:  MediaQuery.of(context).size.height *.20,
                                            width: MediaQuery.of(context).size.width *.28,
                                            decoration: BoxDecoration(
                                              image: DecorationImage(
                                                  image: AssetImage(o3[index].image),
                                                  fit: BoxFit.fill),
                                              borderRadius: BorderRadius.circular(20),
                                            ),
                                          ),
                                            Positioned(
                                              child: Container(
                                                color: Colors.blue,
                                                height: 20,
                                                width: 35,
                                                child: Shimmer.fromColors(
                                                  highlightColor: Colors.amber,
                                                  baseColor: Colors.white,

                                                  child: Text("FREE",
                                                    style: TextStyle(color: Colors.black),
                                                  ),
                                                ),
                                              ),right: 10,top: 10,
                                            ),

                                        ]
                                        ),
                                      ),
                                      //Text(o2[index].text),
                                    ]
                                );
                              }
                          ),
                        ),
           
           
                        ///list vive  uptext details  3 Malayalam movie

                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Row(
                            children: [
                              AnimatedTextKit(
                                  animatedTexts: [
                                    WavyAnimatedText("Malayalam movie",
                                      textStyle:
                                      TextStyle(
                                        fontSize: 20,),),
                                  ]
                              ),
                              SizedBox(width: 170,),
                              GestureDetector(
                                child: Text("More",
                                  style: TextStyle(fontSize: 15,),
                                ),
                                onTap: () {
                                  Navigator.push(
                                      context, MaterialPageRoute(builder: (context) => ottmorbutt()));
                                },
                              ),
                              GestureDetector(
                                onTap: () {
                                  Navigator.push(
                                      context, MaterialPageRoute(builder: (context) => ottmorbutt()));
                                },
                                child: Icon(Icons.chevron_right_outlined,),),
                            ],
                          ),
                        ),
           
           
           
                        ///list vive details  3 malayalam movie
           
                        Container(
                          //decoration: BoxDecoration(border: Border.all()),
                          height: MediaQuery.of(context).size.height * .25,
                          width: MediaQuery.of(context).size.width *1,
                          child:  ListView.builder(
                              scrollDirection: Axis.horizontal,
                              itemCount: o4.length,
                              itemBuilder: (BuildContext con, index) {
                                return Column(
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.all(5.0),
                                        child: Stack(
                                          children: [Container(
                                            height:  MediaQuery.of(context).size.height *.15,
                                            width: MediaQuery.of(context).size.width *.40,
                                            decoration: BoxDecoration(
                                              image: DecorationImage(
                                                  image: AssetImage(o4[index].image),
                                                  fit: BoxFit.fill),
                                              borderRadius: BorderRadius.circular(20),
                                            ),
                                          ),
                                            Positioned(
                                              child: Container(
                                                color: Colors.blue,
                                                height: 20,
                                                width: 35,
                                                child: Shimmer.fromColors(
                                                  highlightColor: Colors.black,
                                                  baseColor: Colors.white,
                                                  child: Text("FREE",
                                                    style: TextStyle(color: Colors.black),
                                                  ),
                                                ),
                                              ),right: 10,top: 10,
                                            ),
                                        ]),),
                                      //Text(o2[index].text),
                                    ]
                                );
           
           
                              }),
                        ),
           
           
                        ///list vive  uptext details  4 Web Series

                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Row(
                            children: [
                              AnimatedTextKit(
                                  animatedTexts: [
                                    WavyAnimatedText("Web Series",
                                      textStyle:
                                      TextStyle(
                                        fontSize: 20,),),
                                  ]
                              ),
                              SizedBox(width: 230,),
                              GestureDetector(
                                child: Text("More",
                                  style: TextStyle(fontSize: 15,),
                                ),
                                onTap: () {
                                  Navigator.push(
                                      context, MaterialPageRoute(builder: (context) => ottmorbutt()));
                                },
                              ),
                              GestureDetector(
                                onTap: () {
                                  Navigator.push(
                                      context, MaterialPageRoute(builder: (context) => ottmorbutt()));
                                },
                                child: Icon(Icons.chevron_right_outlined,),),
                            ],
                          ),
                        ),
           
           
           
                        ///list vive details  4 Web Series
           
                        Container(
                          //decoration: BoxDecoration(border: Border.all()),
                          height: MediaQuery.of(context).size.height * .25,
                          width: MediaQuery.of(context).size.width *1,
                          child:  ListView.builder(
                              scrollDirection: Axis.horizontal,
                              itemCount: o5.length,
                              itemBuilder: (BuildContext con, index) {
                                return Column(
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.all(5.0),
                                        child: Stack(
                                          children:[ Container(
                                            height:  MediaQuery.of(context).size.height *.20,
                                            width: MediaQuery.of(context).size.width *.28,
                                            decoration: BoxDecoration(
                                              image: DecorationImage(
                                                  image: AssetImage(o5[index].image),
                                                  fit: BoxFit.fill),
                                              borderRadius: BorderRadius.circular(20),
                                            ),
                                          ),
                                            Positioned(
                                              child: Container(
                                                color: Colors.blue,
                                                height: 20,
                                                width: 35,
                                                child: Shimmer.fromColors(
                                                  highlightColor: Colors.black,
                                                  baseColor: Colors.white,
                                                  child: Text("FREE",
                                                    style: TextStyle(color: Colors.black),
                                                  ),
                                                ),
                                              ),right: 10,top: 10,
                                            ),
                                        ]),),
                                      Text(o5[index].text,style: TextStyle(color: Colors.white),),
                                    ]);
           
           
                              }),
                        ),
           
           
           
                        ///list vive  uptext details  5 Hindi Movie

                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Row(
                            children: [
                              AnimatedTextKit(
                                  animatedTexts: [
                                    WavyAnimatedText("Hindi Movie",
                                      textStyle:
                                      TextStyle(
                                        fontSize: 20,),),
                                  ]
                              ),
                              SizedBox(width: 210,),
                              GestureDetector(
                                child: Text("More",
                                  style: TextStyle(fontSize: 15,),
                                ),
                                onTap: () {
                                  Navigator.push(
                                      context, MaterialPageRoute(builder: (context) => ottmorbutt()));
                                },
                              ),
                              GestureDetector(
                                onTap: () {
                                  Navigator.push(
                                      context, MaterialPageRoute(builder: (context) => ottmorbutt()));
                                },
                                child: Icon(Icons.chevron_right_outlined,),),
                            ],
                          ),
                        ),
           
           
           
                        ///list vive details  5 Hindi Movie
           
                        Container(
                          //decoration: BoxDecoration(border: Border.all()),
                          height: MediaQuery.of(context).size.height * .25,
                          width: MediaQuery.of(context).size.width *1,
                          child:  ListView.builder(
                              scrollDirection: Axis.horizontal,
                              itemCount: o4.length,
                              itemBuilder: (BuildContext con, index) {
                                return Column(
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.all(5.0),
                                        child: Stack(
                                          children:[ Container(
                                            height:  MediaQuery.of(context).size.height *.20,
                                            width: MediaQuery.of(context).size.width *.28,
                                            decoration: BoxDecoration(
                                              image: DecorationImage(
                                                  image: AssetImage(o4[index].image),
                                                  fit: BoxFit.fill),
                                              borderRadius: BorderRadius.circular(20),
                                            ),
                                          ),
                                            Positioned(
                                              child: Container(
                                                color: Colors.blue,
                                                height: 20,
                                                width: 35,
                                                child: Shimmer.fromColors(
                                                  highlightColor: Colors.black,
                                                  baseColor: Colors.white,
                                                  child: Text("FREE",
                                                    style: TextStyle(color: Colors.black),
                                                  ),
                                                ),
                                              ),right: 10,top: 10,
                                            ),
                                        ]),),
                                      //Text(o2[index].text),
                                    ]
                                );
           
           
                              }),
                        ),
           
           
                        ///list vive  uptext details  6 Telugu Movie


                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Row(
                            children: [
                              AnimatedTextKit(
                                  animatedTexts: [
                                    WavyAnimatedText("Telugu Movie",
                                      textStyle:
                                      TextStyle(
                                        fontSize: 20,),),
                                  ]
                              ),
                              SizedBox(width: 210,),
                              GestureDetector(
                                child: Text("More",
                                  style: TextStyle(fontSize: 15,),
                                ),
                                onTap: () {
                                  Navigator.push(
                                      context, MaterialPageRoute(builder: (context) => ottmorbutt()));
                                },
                              ),
                              GestureDetector(
                                onTap: () {
                                  Navigator.push(
                                      context, MaterialPageRoute(builder: (context) => ottmorbutt()));
                                },
                                child: Icon(Icons.chevron_right_outlined,),),
                            ],
                          ),
                        ),
           
           
           
                        ///list vive details  6 Telugu Movie
           
                        Container(
                          //decoration: BoxDecoration(border: Border.all()),
                          height: MediaQuery.of(context).size.height * .25,
                          width: MediaQuery.of(context).size.width *1,
                          child:  ListView.builder(
                              scrollDirection: Axis.horizontal,
                              itemCount: o3.length,
                              itemBuilder: (BuildContext con, index) {
                                return Column(
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.all(5.0),
                                        child: Stack(
                                          children:[ Container(
                                            height:  MediaQuery.of(context).size.height *.20,
                                            width: MediaQuery.of(context).size.width *.28,
                                            decoration: BoxDecoration(
                                              image: DecorationImage(
                                                  image: AssetImage(o3[index].image),
                                                  fit: BoxFit.fill),
                                              borderRadius: BorderRadius.circular(20),
                                            ),
                                          ),
                                            Positioned(
                                              child: Container(
                                                color: Colors.blue,
                                                height: 20,
                                                width: 35,
                                                child: Shimmer.fromColors(
                                                  highlightColor: Colors.black,
                                                  baseColor: Colors.white,
                                                  child: Text("FREE",
                                                    style: TextStyle(color: Colors.black),
                                                  ),
                                                ),
                                              ),right: 10,top: 10,
                                            ),
                                        ]),),
                                      //Text(o2[index].text),
                                    ]
                                );
                              }
                          ),
                        ),


                      ],
                    ),
           
           
                  ),
           
           
                  /// tv show details Hotstar
           
           
           
                  SingleChildScrollView(
                    child: Column(
                      children: [
           
           
                        ///carouselSlider details
           
                        // Container(
                        //   color: Colors.white,
                        //   height: 200,
                        //   width:  double.infinity,
                        //   child:   CarouselSlider.builder(
                        //       options: CarouselOptions(
                        //         aspectRatio: 50/9,
                        //         viewportFraction: 1,
                        //         initialPage: 0,
                        //         height: 200,
                        //         enableInfiniteScroll: true,
                        //         reverse: false,
                        //         autoPlay: true,
                        //         autoPlayInterval: Duration(seconds: 3),
                        //         autoPlayAnimationDuration: Duration(milliseconds: 800),
                        //         autoPlayCurve: Curves.fastOutSlowIn,
                        //         enlargeCenterPage: true,
                        //         enlargeFactor: 0.3,
                        //         onPageChanged: (index,reason){
                        //           setState(() {
                        //             currentposition=index;
                        //           });
                        //         },
                        //         scrollDirection: Axis.horizontal,
                        //       ),
                        //       itemCount: o1.length,
                        //       itemBuilder: (BuildContext con,index,c)
                        //       {
                        //         return Container(
                        //           height: 100,
                        //           width:  double.infinity,
                        //           color: Colors.lightGreen,
                        //           child: Image(image: AssetImage(o1[index].image),
                        //             fit: BoxFit.fill,
                        //           ),
                        //
                        //         );
                        //       }
                        //   ),
                        //
                        // ),
           
                        ///carouselSlider dotindicator details
           
                        // DotsIndicator(
                        //   dotsCount: o1.length,
                        //   position: currentposition,
                        //   decorator: DotsDecorator(
                        //     color: Colors.black87, // Inactive color
                        //     activeColor: Colors.amber,
                        //   ),
                        // ),
           
           
                        ///list vive  uptext details 1 star vijay show

                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Row(
                            children: [
                              AnimatedTextKit(
                                  animatedTexts: [
                                WavyAnimatedText("star vijay show",
                                  textStyle:
                                  TextStyle(
                                    fontSize: 20,),),
                                  ]
                              ),
                            ],
                          ),
                        ),
           
           
           
                        ///list vive details 1 star vijay show
           
                        Container(
                          //decoration: BoxDecoration(border: Border.all()),
                          height: MediaQuery.of(context).size.height * .25,
                          width: MediaQuery.of(context).size.width *1,
                          child:  ListView.builder(
                              scrollDirection: Axis.horizontal,
                              itemCount: o2.length,
                              itemBuilder: (BuildContext con, index) {
                                return Column(
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.all(5.0),
                                        child: Container(
                                          height:  MediaQuery.of(context).size.height *.20,
                                          width: MediaQuery.of(context).size.width *.28,
                                          decoration: BoxDecoration(
                                            image: DecorationImage(
                                                image: AssetImage(o2[index].image),
                                                fit: BoxFit.fill),
                                            borderRadius: BorderRadius.circular(5),
                                          ),
                                        ),),
                                      //Text(o2[index].text),
                                    ]);
           
           
                              }),
                        ),
           
           
                        ///list vive  uptext details 2 cook with comali
           
           
           
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child:
                          Row(
                            children: [
                              Container(
                                height: 30,
                                width: 25,
                                decoration:
                                BoxDecoration(
                                  image: DecorationImage(
                                      image: AssetImage("assets/img/m5.jpg"),
                                      fit: BoxFit.fill),),
                              ),
           
                              SizedBox(width: 15,),
           
                              Column(crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  AnimatedTextKit(
                                      animatedTexts: [
                                        WavyAnimatedText("Beause You Watched",
                                          textStyle:
                                          TextStyle(
                                            fontSize: 15,),),]),
                                  AnimatedTextKit(
                                      animatedTexts: [
                                        WavyAnimatedText("Cook With Comali",
                                          textStyle:
                                          TextStyle(
                                            fontSize: 20,),),]),

                                ],
                              ),
           
                            ],
                          ),
           
                        ),
           
           
                        ///list vive details  2 cook with comali
           
           
                        Container(
                          //decoration: BoxDecoration(border: Border.all()),
                          height: MediaQuery.of(context).size.height * .25,
                          width: MediaQuery.of(context).size.width *1,
                          child:  ListView.builder(
                              scrollDirection: Axis.horizontal,
                              itemCount: o3.length,
                              itemBuilder: (BuildContext con, index) {
                                return Column(
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.all(5.0),
                                        child: Stack(
                                          children:[ Container(
                                            height:  MediaQuery.of(context).size.height *.20,
                                            width: MediaQuery.of(context).size.width *.28,
                                            decoration: BoxDecoration(
                                              image: DecorationImage(
                                                  image: AssetImage(o3[index].image),
                                                  fit: BoxFit.fill),
                                              borderRadius: BorderRadius.circular(5),
                                            ),
                                          ),
                                            Positioned(
                                              child: Container(
                                                color: Colors.blue,
                                                height: 20,
                                                width: 35,
                                                child: Shimmer.fromColors(
                                                  highlightColor: Colors.black,
                                                  baseColor: Colors.white,
                                                  child: Text("FREE",
                                                    style: TextStyle(color: Colors.black),
                                                  ),
                                                ),
                                              ),right: 10,top: 10,
                                            ),
                                        ]),),
                                      //Text(o2[index].text),
                                    ]);
           
           
                              }),
                        ),
           
           
                        ///list vive  uptext details  3 Popular Shows

                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Row(
                            children: [
                              AnimatedTextKit(
                                  animatedTexts: [
                                    WavyAnimatedText("Popular Shows",
                                      textStyle:
                                      TextStyle(
                                        fontSize: 20,),),
                                  ]
                              ),
                            ],
                          ),
                        ),
           
           
                        ///list vive details  3 Popular Shows
           
                        Container(
                          //decoration: BoxDecoration(border: Border.all()),
                          height: MediaQuery.of(context).size.height * .25,
                          width: MediaQuery.of(context).size.width *1,
                          child:  ListView.builder(
                              scrollDirection: Axis.horizontal,
                              itemCount: o4.length,
                              itemBuilder: (BuildContext con, index) {
                                return Column(
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.all(5.0),
                                        child: Container(
                                          height:  MediaQuery.of(context).size.height *.20,
                                          width: MediaQuery.of(context).size.width *.28,
                                          decoration: BoxDecoration(
                                            image: DecorationImage(
                                                image: AssetImage(o4[index].image),
                                                fit: BoxFit.fill),
                                            borderRadius: BorderRadius.circular(5),
                                          ),
                                        ),),
                                      //Text(o2[index].text),
                                    ]);
           
           
                              }),
                        ),
           
           
                        ///list vive  uptext details  4 Comedy Shows


                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Row(
                            children: [
                              AnimatedTextKit(
                                  animatedTexts: [
                                    WavyAnimatedText("Comedy Shows",
                                      textStyle:
                                      TextStyle(
                                        fontSize: 20,),),
                                  ]
                              ),
                            ],
                          ),
                        ),
           
           
                        ///list vive details  4 Comedy Shows
           
                        Container(
                          //decoration: BoxDecoration(border: Border.all()),
                          height: MediaQuery.of(context).size.height * .25,
                          width: MediaQuery.of(context).size.width *1,
                          child:  ListView.builder(
                              scrollDirection: Axis.horizontal,
                              itemCount: o5.length,
                              itemBuilder: (BuildContext con, index) {
                                return Column(
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.all(5.0),
                                        child: Container(
                                          height:  MediaQuery.of(context).size.height *.20,
                                          width: MediaQuery.of(context).size.width *.28,
                                          decoration: BoxDecoration(
                                            image: DecorationImage(
                                                image: AssetImage(o5[index].image),
                                                fit: BoxFit.fill),
                                            borderRadius: BorderRadius.circular(5),
                                          ),
                                        ),),
                                      Text(o5[index].text,style: TextStyle(color: Colors.white),),
                                    ]);
           
           
                              }),
                        ),
           
           
           
                        ///list vive  uptext details  5 Bingeworthy Crime Shows

                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Row(
                            children: [
                              AnimatedTextKit(
                                  animatedTexts: [
                                    WavyAnimatedText("Bingeworthy Crime Shows",
                                      textStyle:
                                      TextStyle(
                                        fontSize: 20,),),
                                  ]
                              ),
                            ],
                          ),
                        ),
           
           
           
                        ///list vive details  5 Bingeworthy Crime Shows
           
                        Container(
                          //decoration: BoxDecoration(border: Border.all()),
                          height: MediaQuery.of(context).size.height * .25,
                          width: MediaQuery.of(context).size.width *1,
                          child:  ListView.builder(
                              scrollDirection: Axis.horizontal,
                              itemCount: o2.length,
                              itemBuilder: (BuildContext con, index) {
                                return Column(
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.all(5.0),
                                        child: Container(
                                          height:  MediaQuery.of(context).size.height *.20,
                                          width: MediaQuery.of(context).size.width *.28,
                                          decoration: BoxDecoration(
                                            image: DecorationImage(
                                                image: AssetImage(o2[index].image),
                                                fit: BoxFit.fill),
                                            borderRadius: BorderRadius.circular(5),
                                          ),
                                        ),),
                                      //Text(o2[index].text),
                                    ]);
           
           
                              }),
                        ),
           
           
                        ///list vive  uptext details 6 Action Shows

                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Row(
                            children: [
                              AnimatedTextKit(
                                  animatedTexts: [
                                    WavyAnimatedText("Action Shows",
                                      textStyle:
                                      TextStyle(
                                        fontSize: 20,),),
                                  ]
                              ),
                            ],
                          ),
                        ),
           
           
                        ///list vive details 6 Action Shows
           
                        Container(
                          //decoration: BoxDecoration(border: Border.all()),
                          height: MediaQuery.of(context).size.height * .25,
                          width: MediaQuery.of(context).size.width *1,
                          child:  ListView.builder(
                              scrollDirection: Axis.horizontal,
                              itemCount: o5.length,
                              itemBuilder: (BuildContext con, index) {
                                return Column(
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.all(5.0),
                                        child: Container(
                                          height:  MediaQuery.of(context).size.height *.20,
                                          width: MediaQuery.of(context).size.width *.28,
                                          decoration: BoxDecoration(
                                            image: DecorationImage(
                                                image: AssetImage(o5[index].image),
                                                fit: BoxFit.fill),
                                            borderRadius: BorderRadius.circular(5),
                                          ),
                                        ),),
                                      Text(o5[index].text,
                                        style: TextStyle(color: Colors.white),),
                                    ]);
           
           
                              }),
                        ),
           
           
                        ///list vive  uptext details 7 Kids Shows

                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Row(
                            children: [
                              AnimatedTextKit(
                                  animatedTexts: [
                                    WavyAnimatedText("Kids Shows",
                                      textStyle:
                                      TextStyle(
                                        fontSize: 20,),),
                                  ]
                              ),
                            ],
                          ),
                        ),
           
                        ///list vive details 7 Kids Shows
           
                        Container(
                          //decoration: BoxDecoration(border: Border.all()),
                          height: MediaQuery.of(context).size.height * .25,
                          width: MediaQuery.of(context).size.width *1,
                          child:  ListView.builder(
                              scrollDirection: Axis.horizontal,
                              itemCount: o6.length,
                              itemBuilder: (BuildContext con, index) {
                                return Column(
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.all(5.0),
                                        child: Stack(
                                          children: [Container(
                                            height:  MediaQuery.of(context).size.height *.20,
                                            width: MediaQuery.of(context).size.width *.28,
                                            decoration: BoxDecoration(
                                              image: DecorationImage(
                                                  image: AssetImage(o6[index].image),
                                                  fit: BoxFit.fill),
                                              borderRadius: BorderRadius.circular(5),
                                            ),
                                          ),
                                            Positioned(
                                              child: Container(
                                                color: Colors.amber,
                                                height: 20,
                                                width: 35,
                                                child: Shimmer.fromColors(
                                                  highlightColor: Colors.black,
                                                  baseColor: Colors.white,
                                                  child: Text("FREE",
                                                    style: TextStyle(color: Colors.black),
                                                  ),
                                                ),
                                              ),right: 10,top: 10,
                                            ),
                                        ]),),
                                      Text(o6[index].text,style: TextStyle(color: Colors.white),),
                                    ]);
           
           
                              }),
                        ),
           
           
           
                      ],
                    ),
                  ),
           
           
           
           
                  /// Movies Shows Hotstar
           
           
           
                  SingleChildScrollView(
                    child: Column(
                      children: [
           
           
                        ///list vive  uptext details 1 Tamil Movie

                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Row(
                            children: [
                              AnimatedTextKit(
                                  animatedTexts: [
                                    WavyAnimatedText("Tamil Movie",
                                      textStyle:
                                      TextStyle(
                                        fontSize: 20,),),
                                  ]
                              ),
                            ],
                          ),
                        ),

                        ///list vive details 1 Tamil Movie
           
                        Container(
                          //decoration: BoxDecoration(border: Border.all()),
                          height: MediaQuery.of(context).size.height * .25,
                          width: MediaQuery.of(context).size.width *1,
                          child:  ListView.builder(
                              scrollDirection: Axis.horizontal,
                              itemCount: o2.length,
                              itemBuilder: (BuildContext con, index) {
                                return Column(
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.all(5.0),
                                        child: Stack(
                                          children:[ Container(
                                            height:  MediaQuery.of(context).size.height *.20,
                                            width: MediaQuery.of(context).size.width *.28,
                                            decoration: BoxDecoration(
                                              image: DecorationImage(
                                                  image: AssetImage(o2[index].image),
                                                  fit: BoxFit.fill),
                                              borderRadius: BorderRadius.circular(5),
                                            ),
                                          ),
                                            Positioned(
                                              child: Shimmer.fromColors(
                                                highlightColor: Colors.red,
                                                baseColor: Colors.white,
                                                child: Icon(Icons.favorite,
                                                  color: Colors.red,),
                                              ),
                                              right: 10,top: 5,),
                                        ]),),
                                      //Text(o2[index].text),
                                    ]);
           
           
                              }),
                        ),
           
           
                        ///list vive  uptext details 2 Upcoming Movie



                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Row(
                            children: [
                              AnimatedTextKit(
                                  animatedTexts: [
                                    WavyAnimatedText(" Upcoming Movie",
                                      textStyle:
                                      TextStyle(
                                        fontSize: 20,),),
                                  ]
                              ),
                            ],
                          ),
                        ),



                        ///list vive details  2 Upcoming Movie
           
           
                        Container(
                          //decoration: BoxDecoration(border: Border.all()),
                          height: MediaQuery.of(context).size.height * .25,
                          width: MediaQuery.of(context).size.width *1,
                          child:  ListView.builder(
                              scrollDirection: Axis.horizontal,
                              itemCount: o3.length,
                              itemBuilder: (BuildContext con, index) {
                                return Column(
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.all(5.0),
                                        child: Stack(
                                          children:[ Container(
                                            height:  MediaQuery.of(context).size.height *.20,
                                            width: MediaQuery.of(context).size.width *.28,
                                            decoration: BoxDecoration(
                                              image: DecorationImage(
                                                  image: AssetImage(o3[index].image),
                                                  fit: BoxFit.fill),
                                              borderRadius: BorderRadius.circular(5),
                                            ),
                                          ),
                                            Positioned(
                                              child: Container(
                                                color: Colors.blue,                                                height: 20,
                                                width: 35,
                                                child: Shimmer.fromColors(
                                                  highlightColor: Colors.black,
                                                  baseColor: Colors.white,
                                                  child: Text("FREE",
                                                    style: TextStyle(color: Colors.black),
                                                  ),
                                                ),
                                              ),right: 10,top: 10,
                                            ),
                                        ]),),
                                      //Text(o2[index].text),
                                    ]);
           
           
                              }),
                        ),
           
           
                        ///list vive  uptext details  3 Horror Movie

                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Row(
                            children: [
                              AnimatedTextKit(
                                  animatedTexts: [
                                    WavyAnimatedText("Horror Movie",
                                      textStyle:
                                      TextStyle(
                                        fontSize: 20,),),
                                  ]
                              ),
                            ],
                          ),
                        ),
           
           
           
                        ///list vive details  3 Horror Movie
           
                        Container(
                          //decoration: BoxDecoration(border: Border.all()),
                          height: MediaQuery.of(context).size.height * .25,
                          width: MediaQuery.of(context).size.width *1,
                          child:  ListView.builder(
                              scrollDirection: Axis.horizontal,
                              itemCount: o4.length,
                              itemBuilder: (BuildContext con, index) {
                                return Column(
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.all(5.0),
                                        child: Stack(
                                          children:[ Container(
                                            height:  MediaQuery.of(context).size.height *.20,
                                            width: MediaQuery.of(context).size.width *.28,
                                            decoration: BoxDecoration(
                                              image: DecorationImage(
                                                  image: AssetImage(o4[index].image),
                                                  fit: BoxFit.fill),
                                              borderRadius: BorderRadius.circular(5),
                                            ),
                                          ),
                                            Positioned(
                                              child: Container(
                                                color: Colors.blue,                                                height: 20,
                                                width: 35,
                                                child: Shimmer.fromColors(
                                                  highlightColor: Colors.black,
                                                  baseColor: Colors.white,
                                                  child: Text("FREE",
                                                    style: TextStyle(color: Colors.black),
                                                  ),
                                                ),
                                              ),right: 10,top: 10,
                                            ),
                                        ]),),
                                      //Text(o2[index].text),
                                    ]);
           
           
                              }),
                        ),
           
           
                        ///list vive  uptext details  4 Romance Movie

                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Row(
                            children: [
                              AnimatedTextKit(
                                  animatedTexts: [
                                    WavyAnimatedText("Romance Movie",
                                      textStyle:
                                      TextStyle(
                                        fontSize: 20,),),
                                  ]
                              ),
                            ],
                          ),
                        ),
           
           
           
                        ///list vive details  4 Romance Movie
           
                        Container(
                          //decoration: BoxDecoration(border: Border.all()),
                          height: MediaQuery.of(context).size.height * .25,
                          width: MediaQuery.of(context).size.width *1,
                          child:  ListView.builder(
                              scrollDirection: Axis.horizontal,
                              itemCount: o5.length,
                              itemBuilder: (BuildContext con, index) {
                                return Column(
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.all(5.0),
                                        child: Stack(
                                          children:[ Container(
                                            height:  MediaQuery.of(context).size.height *.20,
                                            width: MediaQuery.of(context).size.width *.28,
                                            decoration: BoxDecoration(
                                              image: DecorationImage(
                                                  image: AssetImage(o5[index].image),
                                                  fit: BoxFit.fill),
                                              borderRadius: BorderRadius.circular(5),
                                            ),
                                          ),
                                            Positioned(
                                              child: Container(
                                                color: Colors.blue,                                                height: 20,
                                                width: 35,
                                                child: Shimmer.fromColors(
                                                  highlightColor: Colors.black,
                                                  baseColor: Colors.white,
                                                  child: Text("FREE",
                                                    style: TextStyle(color: Colors.black),
                                                  ),
                                                ),
                                              ),right: 10,top: 10,
                                            ),
                                        ]),),
                                      Text(o5[index].text,style: TextStyle(color: Colors.white),),
                                    ]);
           
           
                              }),
                        ),
           
           
           
                        ///list vive  uptext details  5 Family Movie

                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Row(
                            children: [
                              AnimatedTextKit(
                                  animatedTexts: [
                                    WavyAnimatedText("Family Movie",
                                      textStyle:
                                      TextStyle(
                                        fontSize: 20,),),
                                  ]
                              ),
                            ],
                          ),
                        ),
           
           
           
                        ///list vive details  5 Family Movie
           
                        Container(
                          //decoration: BoxDecoration(border: Border.all()),
                          height: MediaQuery.of(context).size.height * .25,
                          width: MediaQuery.of(context).size.width *1,
                          child:  ListView.builder(
                              scrollDirection: Axis.horizontal,
                              itemCount: o2.length,
                              itemBuilder: (BuildContext con, index) {
                                return Column(
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.all(5.0),
                                        child: Stack(
                                          children:[ Container(
                                            height:  MediaQuery.of(context).size.height *.20,
                                            width: MediaQuery.of(context).size.width *.28,
                                            decoration: BoxDecoration(
                                              image: DecorationImage(
                                                  image: AssetImage(o2[index].image),
                                                  fit: BoxFit.fill),
                                              borderRadius: BorderRadius.circular(5),
                                            ),
                                          ),
                                            Positioned(
                                              child: Container(
                                                color: Colors.blue,                                                height: 20,
                                                width: 35,
                                                child: Shimmer.fromColors(
                                                  highlightColor: Colors.black,
                                                  baseColor: Colors.white,
                                                  child: Text("FREE",
                                                    style: TextStyle(color: Colors.black),
                                                  ),
                                                ),
                                              ),right: 10,top: 10,
                                            ),
                                        ]),),
                                      //Text(o2[index].text),
                                    ]);
           
           
                              }),
                        ),
           
           
                        ///list vive  uptext details 6 Exclusive Indian Movie

                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Row(
                            children: [
                              AnimatedTextKit(
                                  animatedTexts: [
                                    WavyAnimatedText("Exclusive Indian Movie",
                                      textStyle:
                                      TextStyle(
                                        fontSize: 20,),),
                                  ]
                              ),
                            ],
                          ),
                        ),
           
           
                        ///list vive details 6 Exclusive Indian Movie
           
                        Container(
                          //decoration: BoxDecoration(border: Border.all()),
                          height: MediaQuery.of(context).size.height * .25,
                          width: MediaQuery.of(context).size.width *1,
                          child:  ListView.builder(
                              scrollDirection: Axis.horizontal,
                              itemCount: o5.length,
                              itemBuilder: (BuildContext con, index) {
                                return Column(
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.all(5.0),
                                        child: Stack(
                                          children:[ Container(
                                            height:  MediaQuery.of(context).size.height *.20,
                                            width: MediaQuery.of(context).size.width *.28,
                                            decoration: BoxDecoration(
                                              image: DecorationImage(
                                                  image: AssetImage(o5[index].image),
                                                  fit: BoxFit.fill),
                                              borderRadius: BorderRadius.circular(5),
                                            ),
                                          ),
                                            Positioned(
                                              child: Container(
                                                color: Colors.blue,                                                height: 20,
                                                width: 35,
                                                child: Shimmer.fromColors(
                                                  highlightColor: Colors.black,
                                                  baseColor: Colors.white,
                                                  child: Text("FREE",
                                                    style: TextStyle(color: Colors.black),
                                                  ),
                                                ),
                                              ),right: 10,top: 10,
                                            ),
                                        ]),),
                                      Text(o5[index].text,style: TextStyle(color: Colors.white),),
                                    ]);
           
           
                              }),
                        ),
           
           
                        ///list vive  uptext details 7 Bollywood Movie


                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Row(
                            children: [
                              AnimatedTextKit(
                                  animatedTexts: [
                                    WavyAnimatedText("Bollywood Movie",
                                      textStyle:
                                      TextStyle(
                                        fontSize: 20,),),
                                  ]
                              ),
                            ],
                          ),
                        ),
           
           
                        ///list vive details 7 Bollywood Movie
           
                        Container(
                          //decoration: BoxDecoration(border: Border.all()),
                          height: MediaQuery.of(context).size.height * .25,
                          width: MediaQuery.of(context).size.width *1,
                          child:  ListView.builder(
                              scrollDirection: Axis.horizontal,
                              itemCount: o6.length,
                              itemBuilder: (BuildContext con, index) {
                                return Column(
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.all(5.0),
                                        child: Stack(
                                          children:[ Container(
                                            height:  MediaQuery.of(context).size.height *.20,
                                            width: MediaQuery.of(context).size.width *.28,
                                            decoration: BoxDecoration(
                                              image: DecorationImage(
                                                  image: AssetImage(o6[index].image),
                                                  fit: BoxFit.fill),
                                              borderRadius: BorderRadius.circular(5),
                                            ),
                                          ),
                                            Positioned(
                                              child: Container(
                                                color: Colors.blue,                                                height: 20,
                                                width: 35,
                                                child: Shimmer.fromColors(
                                                  highlightColor: Colors.black,
                                                  baseColor: Colors.white,
                                                  child: Text("FREE",
                                                    style: TextStyle(color: Colors.black),
                                                  ),
                                                ),
                                              ),right: 10,top: 10,
                                            ),
                                        ]),),
                                      Text(o6[index].text,style: TextStyle(color: Colors.white),),
                                    ]);
           
           
                              }),
                        ),
           
           
                        ///list vive  uptext details  8 Hollywood Movie


                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Row(
                            children: [
                              AnimatedTextKit(
                                  animatedTexts: [
                                    WavyAnimatedText("Hollywood Movie",
                                      textStyle:
                                      TextStyle(
                                        fontSize: 20,),),
                                  ]
                              ),
                            ],
                          ),
                        ),




                        ///list vive details  8 Hollywood Movie
           
                        Container(
                          //decoration: BoxDecoration(border: Border.all()),
                          height: MediaQuery.of(context).size.height * .25,
                          width: MediaQuery.of(context).size.width *1,
                          child:  ListView.builder(
                              scrollDirection: Axis.horizontal,
                              itemCount: o5.length,
                              itemBuilder: (BuildContext con, index) {
                                return Column(
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.all(5.0),
                                        child: Stack(
                                          children:[ Container(
                                            height:  MediaQuery.of(context).size.height *.20,
                                            width: MediaQuery.of(context).size.width *.28,
                                            decoration: BoxDecoration(
                                              image: DecorationImage(
                                                  image: AssetImage(o5[index].image),
                                                  fit: BoxFit.fill),
                                              borderRadius: BorderRadius.circular(5),
                                            ),
                                          ),
                                            Positioned(
                                              child: Container(
                                                color: Colors.blue,                                                height: 20,
                                                width: 35,
                                                child: Shimmer.fromColors(
                                                  highlightColor: Colors.black,
                                                  baseColor: Colors.white,
                                                  child: Text("FREE",
                                                    style: TextStyle(color: Colors.black),
                                                  ),
                                                ),
                                              ),right: 10,top: 10,
                                            ),
                                        ]),),
                                      Text(o5[index].text,style: TextStyle(color: Colors.white),),
                                    ]);
           
           
                              }),
                        ),
           
           
                        ///list vive  uptext details 9 Hindi Movie


                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Row(
                            children: [
                              AnimatedTextKit(
                                  animatedTexts: [
                                    WavyAnimatedText("Hindi Movie",
                                      textStyle:
                                      TextStyle(
                                        fontSize: 20,),),
                                  ]
                              ),
                            ],
                          ),
                        ),



                        ///list vive details 9 Hindi Movie
           
                        Container(
                          //decoration: BoxDecoration(border: Border.all()),
                          height: MediaQuery.of(context).size.height * .25,
                          width: MediaQuery.of(context).size.width *1,
                          child:  ListView.builder(
                              scrollDirection: Axis.horizontal,
                              itemCount: o2.length,
                              itemBuilder: (BuildContext con, index) {
                                return Column(
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.all(5.0),
                                        child: Stack(
                                          children:[ Container(
                                            height:  MediaQuery.of(context).size.height *.20,
                                            width: MediaQuery.of(context).size.width *.28,
                                            decoration: BoxDecoration(
                                              image: DecorationImage(
                                                  image: AssetImage(o2[index].image),
                                                  fit: BoxFit.fill),
                                              borderRadius: BorderRadius.circular(5),
                                            ),
                                          ),
                                            Positioned(
                                              child: Container(
                                                color: Colors.blue,                                                height: 20,
                                                width: 35,
                                                child: Shimmer.fromColors(
                                                  highlightColor: Colors.black,
                                                  baseColor: Colors.white,
                                                  child: Text("FREE",
                                                    style: TextStyle(color: Colors.black),
                                                  ),
                                                ),
                                              ),right: 10,top: 10,
                                            ),
                                        ]),),
                                      //Text(o2[index].text),
                                    ]);
           
           
                              }),
                        ),
           
           
                        ///list vive  uptext details 10 Malayalam  Movie


                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Row(
                            children: [
                              AnimatedTextKit(
                                  animatedTexts: [
                                    WavyAnimatedText("Malayalam  Movie",
                                      textStyle:
                                      TextStyle(
                                        fontSize: 20,),),
                                  ]
                              ),
                            ],
                          ),
                        ),
           
           
                        ///list vive details  10 Malayalam  Movie
           
           
                        Container(
                          //decoration: BoxDecoration(border: Border.all()),
                          height: MediaQuery.of(context).size.height * .25,
                          width: MediaQuery.of(context).size.width *1,
                          child:  ListView.builder(
                              scrollDirection: Axis.horizontal,
                              itemCount: o3.length,
                              itemBuilder: (BuildContext con, index) {
                                return Column(
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.all(5.0),
                                        child: Stack(
                                          children:[ Container(
                                            height:  MediaQuery.of(context).size.height *.20,
                                            width: MediaQuery.of(context).size.width *.28,
                                            decoration: BoxDecoration(
                                              image: DecorationImage(
                                                  image: AssetImage(o3[index].image),
                                                  fit: BoxFit.fill),
                                              borderRadius: BorderRadius.circular(5),
                                            ),
                                          ),
                                            Positioned(
                                              child: Container(
                                                color: Colors.blue,                                                height: 20,
                                                width: 35,
                                                child: Shimmer.fromColors(
                                                  highlightColor: Colors.black,
                                                  baseColor: Colors.white,
                                                  child: Text("FREE",
                                                    style: TextStyle(color: Colors.black),
                                                  ),
                                                ),
                                              ),right: 10,top: 10,
                                            ),
                                        ]),),
                                      //Text(o2[index].text),
                                    ]);
           
           
                              }),
                        ),
           
           
                        ///list vive  uptext details  11 Telugu Movie

                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Row(
                            children: [
                              AnimatedTextKit(
                                  animatedTexts: [
                                    WavyAnimatedText("Telugu Movie",
                                      textStyle:
                                      TextStyle(
                                        fontSize: 20,),),
                                  ]
                              ),
                            ],
                          ),
                        ),
           
           
           
                        ///list vive details  11 Telugu Movie

                        Container(
                          //decoration: BoxDecoration(border: Border.all()),
                          height: MediaQuery.of(context).size.height * .25,
                          width: MediaQuery.of(context).size.width *1,
                          child:  ListView.builder(
                              scrollDirection: Axis.horizontal,
                              itemCount: o3.length,
                              itemBuilder: (BuildContext con, index) {
                                return Column(
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.all(5.0),
                                        child: Stack(
                                          children:[ Container(
                                            height:  MediaQuery.of(context).size.height *.20,
                                            width: MediaQuery.of(context).size.width *.28,
                                            decoration: BoxDecoration(
                                              image: DecorationImage(
                                                  image: AssetImage(o3[index].image),
                                                  fit: BoxFit.fill),
                                              borderRadius: BorderRadius.circular(5),
                                            ),
                                          ),
                                            Positioned(
                                              child: Container(
                                                color: Colors.blue,
                                                height: 20,
                                                width: 35,
                                                child: Shimmer.fromColors(
                                                  highlightColor: Colors.black,
                                                  baseColor: Colors.white,
                                                  child: Text("FREE",
                                                    style: TextStyle(color: Colors.black),
                                                  ),
                                                ),
                                              ),right: 10,top: 10,
                                            ),
                                       ] ),),
                                      //Text(o2[index].text),
                                    ]);


                              }),
                        ),





















                      ],
                    ),
                  ),





           
                  ///More Details & More catagory
           
                  SingleChildScrollView(
                    child: Column(
                      children: [
           
           
                        /// Gridview
           
           
                        Container(
                          height: 270,
                          //height: MediaQuery.of(context).size.height * .15,
                          width: MediaQuery.of(context).size.width *1,
                          color: Color(0xff0f0617),
                          child:
                          GridView.builder(
                            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                              crossAxisCount: 3,
                              mainAxisSpacing: 3,
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
           
           
                        ///list vive  uptext details 1 Popular Languages

                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Row(
                            children: [
                              AnimatedTextKit(
                                  animatedTexts: [
                                    WavyAnimatedText("Popular Languages",
                                      textStyle:
                                      TextStyle(
                                        fontSize: 20,),),
                                  ]
                              ),
                            ],
                          ),
                        ),
           
                        ///list vive details 1 Popular Languages
           
                        Container(
                          //decoration: BoxDecoration(border: Border.all()),
                          height: MediaQuery.of(context).size.height * .15,
                          width: MediaQuery.of(context).size.width *1,
                          child:  ListView.builder(
                              scrollDirection: Axis.horizontal,
                              itemCount: o8.length,
                              itemBuilder: (BuildContext con, index) {
                                return Column(
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.all(5.0),
                                        child: Container(
                                          height:  MediaQuery.of(context).size.height *.10,
                                          width: MediaQuery.of(context).size.width *.40,
                                          decoration: BoxDecoration(
                                            image: DecorationImage(
                                                image: AssetImage(o8[index].image),
                                                fit: BoxFit.fill),
                                            borderRadius: BorderRadius.circular(5),
                                          ),
                                        ),),
                                      Text(o8[index].text,),
                                    ]);
           
           
                              }),
                        ),
           
           
                        ///list vive  uptext details 2 Popular Chennels



                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Row(
                            children: [
                              AnimatedTextKit(
                                  animatedTexts: [
                                    WavyAnimatedText("Popular Chennels",
                                      textStyle:
                                      TextStyle(
                                        fontSize: 20,),),
                                  ]
                              ),
                            ],
                          ),
                        ),
           
           
                        ///list vive details  2 Popular Chennels
           
           
                        Container(
                          //decoration: BoxDecoration(border: Border.all()),
                          height: MediaQuery.of(context).size.height * .15,
                          width: MediaQuery.of(context).size.width *1,
                          child:  ListView.builder(
                              scrollDirection: Axis.horizontal,
                              itemCount: o3.length,
                              itemBuilder: (BuildContext con, index) {
                                return Column(
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.all(5.0),
                                        child: Container(
                                          height:  MediaQuery.of(context).size.height *.10,
                                          width: MediaQuery.of(context).size.width *.40,
                                          decoration: BoxDecoration(
                                            image: DecorationImage(
                                                image: AssetImage(o3[index].image),
                                                fit: BoxFit.fill),
                                            borderRadius: BorderRadius.circular(5),
                                          ),
                                        ),),
                                      //Text(o2[index].text),
                                    ]);
           
           
                              }),
                        ),
           
           
                        ///list vive  uptext details  3 Popular Genres

                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Row(
                            children: [
                              AnimatedTextKit(
                                  animatedTexts: [
                                    WavyAnimatedText("Popular Genres",
                                      textStyle:
                                      TextStyle(
                                        fontSize: 20,),),
                                  ]
                              ),
                            ],
                          ),
                        ),
           
           
                        ///list vive details  3 Popular Genres
           
                        Container(
                          //decoration: BoxDecoration(border: Border.all()),
                          height: MediaQuery.of(context).size.height * .15,
                          width: MediaQuery.of(context).size.width *1,
                          child:  ListView.builder(
                              scrollDirection: Axis.horizontal,
                              itemCount: cc.length,
                              itemBuilder: (BuildContext con, index) {
                                return Column(
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.all(5.0),
                                        child: Container(
                                          height:  MediaQuery.of(context).size.height *.10,
                                          width: MediaQuery.of(context).size.width *.40,
                                          decoration: BoxDecoration(
                                            image: DecorationImage(
                                                image: AssetImage(cc[index].image),
                                                fit: BoxFit.fill),
                                            borderRadius: BorderRadius.circular(5),
                                          ),
                                        ),),
                                      Text(cc[index].text,),
                                    ]);
           
           
                              }),
                        ),
           
           
                        ///list vive  uptext details  4 Popular Sports


                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Row(
                            children: [
                              AnimatedTextKit(
                                  animatedTexts: [
                                    WavyAnimatedText("Popular Sports",
                                      textStyle:
                                      TextStyle(
                                        fontSize: 20,),),
                                  ]
                              ),
                            ],
                          ),
                        ),
           
           
           
                        ///list vive details  4 Popular Sports
           
                        Container(
                          //decoration: BoxDecoration(border: Border.all()),
                          height: MediaQuery.of(context).size.height * .15,
                          width: MediaQuery.of(context).size.width *1,
                          child:  ListView.builder(
                              scrollDirection: Axis.horizontal,
                              itemCount: bb.length,
                              itemBuilder: (BuildContext con, index) {
                                return Column(
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.all(5.0),
                                        child: Container(
                                          height:  MediaQuery.of(context).size.height *.10,
                                          width: MediaQuery.of(context).size.width *.40,
                                          decoration: BoxDecoration(
                                            image: DecorationImage(
                                                image: AssetImage(bb[index].image),
                                                fit: BoxFit.fill),
                                            borderRadius: BorderRadius.circular(5),
                                          ),
                                        ),),
                                      Text(bb[index].text,),
                                    ]);
           
           
                              }),
                        ),
           
           
           
           
           
                      ],
                    ),
                  ),











                ],
           
              ),)
                /// Home page all Details mix's  Zee5











              ),
           
                     ),
           ),
         );



  }
}