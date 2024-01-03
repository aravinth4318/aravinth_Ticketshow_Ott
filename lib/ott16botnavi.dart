import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';

import 'ott17fav.dart';
import 'ott18search.dart';
import 'ott5homepage.dart';
import 'ott6appbarmenuinformation.dart';


class ottbotcur extends StatefulWidget {
  const ottbotcur({super.key});

  @override
  State<ottbotcur> createState() => _ottbotcurState();
}

class _ottbotcurState extends State<ottbotcur> {
  int _currentIndex = 0;

    final tabs = [
    otthomepage(),
    ottsear(),
    ottfav(),
    ott6menu(),

  ];


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: tabs[_currentIndex],
      bottomNavigationBar: CurvedNavigationBar(
        backgroundColor:  Color(0xff0f0617),
        // buttonBackgroundColor: Colors.cyanAccent,
        items: [
          Icon(Icons.home,size: 30,color: Colors.blue,),
          Icon(Icons.search_rounded,size: 30,color: Colors.green,),
          Icon(Icons.favorite,size: 30,color: Colors.red,),
          Icon(Icons.menu,size: 30,color: Colors.black,),
        ],
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        }
      ),
    );
  }
}


