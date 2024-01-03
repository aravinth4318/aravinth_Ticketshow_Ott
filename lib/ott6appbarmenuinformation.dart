import 'package:flutter/material.dart';
import 'ott11setting.dart';
import 'ott12aboutus.dart';
import 'ott13help.dart';
import 'ott14logout.dart';
import 'ott5homepage.dart';
import 'ott7edit.dart';
import 'ott8mysub.dart';
import 'ott9mytran.dart';
import 'ott16botnavi.dart';



class ott6menu extends StatefulWidget {
  const ott6menu({super.key});

  @override
  State<ott6menu> createState() => _ott6menuState();
}

class _ott6menuState extends State<ott6menu> {

  bool _switch = false;
  ThemeData _dark = ThemeData(brightness: Brightness.dark);
  ThemeData _light = ThemeData(brightness: Brightness.light);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: _switch ? _dark : _light,
        home: Scaffold(
          //backgroundColor: Color(0xff0f0617),
          appBar:
          AppBar(
            //backgroundColor: Color(0xff1b1223),
            flexibleSpace:
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: GestureDetector(
                    onTap: (){
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => ottbotcur()
                      ));
                    },
                    child: GestureDetector(
                      child: CircleAvatar(
                        backgroundImage:
                        AssetImage("assets/img/3.jpg"),
                      ),
                    ),
                  ),
                ),
                SizedBox(width: 10,),
                Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(right: 100,top: 10),
                      child: Text("S.Aravinth"),
                    ),
                    Text("aravinths4318@gmail.com"),
                  ],
                ),
                SizedBox(width: 10,),
              ],
            ),
            actions: [
              Container(
                  height: 40,
                  width:  40,
                  child: FittedBox(
                    child: Switch(value: _switch, onChanged: (_newvalue){
                      setState(() {
                        _switch = _newvalue;
                      });
                    }),
                  )
              ),
            ],
          ),
      
          body:
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child:
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                        context, MaterialPageRoute(builder: (context) => ottedit()));
                  },
                  child: Row(
                    children: [
                      Icon(Icons.privacy_tip_outlined),
                      SizedBox(width: 20,),
                      Text("Privacy",
                      ),
      
                    ]
                  ),
                ),
              ),
      
              SizedBox(height: 25,),
      
              Padding(
                padding: const EdgeInsets.all(8.0),
                child:
                GestureDetector(
                    onTap: () {
                      Navigator.push(
                          context, MaterialPageRoute(builder: (context) => ottmysub()));
                    },
                    child: Row(
                      children: [
                        Icon(Icons.my_library_add),
                        SizedBox(width: 20,),
                        Text("My Subscription",
                        ),
                      ],
                    ),
                  ),
                ),
      
              SizedBox(height: 25,),
      
              Padding(
                padding: const EdgeInsets.all(8.0),
                  child: GestureDetector(
                    onTap: () {
                      Navigator.push(
                          context, MaterialPageRoute(builder: (context) => otttranc()));
                    },
                    child: Row(
                      children: [
                        Icon(Icons.payment_outlined),
                        SizedBox(width: 20,),
                        Text("My Transaction",
                        ),
                      ],
                    ),
                  ),
                ),
      
              SizedBox(height: 25,),
      
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: GestureDetector(
                  onTap: () {
                    Navigator.push(
                        context, MaterialPageRoute(builder: (context) => ottsett()));
                  },
                  child: Row(
                    children: [
                      Icon(Icons.settings),
                      SizedBox(width: 20,),
                      Text("Settings"),
                    ],
                  ),
                ),
              ),
      
              SizedBox(height: 25,),
      
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: GestureDetector(
                  onTap: () {
                    Navigator.push(
                        context, MaterialPageRoute(builder: (context) => ottaboutus()));
                  },
                  child: Row(
                    children: [
                      Icon(Icons.details),
                      SizedBox(width: 20,),
                      Text("About Us"),
                    ],
                  ),
                ),
              ),
      
              SizedBox(height: 25,),
      
              Padding(
                padding: const EdgeInsets.all(8.0),
      
                  child: GestureDetector(
                    onTap: () {
                      Navigator.push(
                          context, MaterialPageRoute(builder: (context) => otthelp()));
                    },
                    child: Row(
                      children: [
                        Icon(Icons.help),
                        SizedBox(width: 20,),
                        Text("Help Center",
                        ),
                      ],
                    ),
                  ),
                ),
      
      
      
            ],
          ),
      
      
            // Column(
            //       children: [
            //         Container(
            // height: MediaQuery.of(context).size.height*90,
            // child: ListView.builder(itemCount: image.length,
            // itemBuilder: (context, index)=>Card(
            // child: ListTile(
            // leading: CircleAvatar(
            // radius: 30,
            // backgroundImage: AssetImage(image[index]
            // ,),),
            // title: Text(song[index],style: TextStyle(color: Color(0xff121212)),),
            // subtitle: Text(singer[index],style: TextStyle(color: Color(0xff9c9c9c)),),
            // trailing: Icon(Icons.arrow_forward,),
            // ),
            //       ],
            //     ),
      
      
        ),
      ),
    );
  }
}



























// class NavigationDrawer extends StatelessWidget{
//   const NavigationDrawer({Key? key, required Column children}) : super(key: key);
//
//
//   @override
//   Widget build(BuildContext context) {
//     return Drawer(
//     child: Column(
//       crossAxisAlignment: CrossAxisAlignment.stretch,
//       children: [
//         buildHeader(context),
//         buildMenuIteams(context),
//       ],
//     ),
//   );
//   }
//
//   buildHeader(BuildContext context) => Container(
//   );
//
//   buildMenuIteams(BuildContext context) => Column(
//     children: [
//       ListTile(
//         leading: Icon(Icons.ice_skating_outlined),
//         title: Text("Home"),
//         onTap: (){},
//       )
//     ],
//
//   );
//   }