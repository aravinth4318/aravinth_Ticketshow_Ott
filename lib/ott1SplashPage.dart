import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flutter/material.dart';
import 'ott16botnavi.dart';
import 'ott2firstpage.dart';



class ottsplash extends StatefulWidget {
  const ottsplash({super.key});

  @override
  State<ottsplash> createState() => _ottsplashState();
}

class _ottsplashState extends State<ottsplash> {
  @override
  Widget build(BuildContext context) {
    return  AnimatedSplashScreen(
      centered: true,
      duration: 4000,
      splashIconSize: double.maxFinite,
      splash: Container(
        height:MediaQuery.of(context).size.height,
        width: double.infinity,
        decoration: BoxDecoration(
          image: DecorationImage(image: AssetImage("assets/img/ticketplash.gif"),
              fit: BoxFit.fill),
        ),
      ),
      nextScreen: const ottfirst(),
      splashTransition: SplashTransition.fadeTransition,
    );
  }
}
