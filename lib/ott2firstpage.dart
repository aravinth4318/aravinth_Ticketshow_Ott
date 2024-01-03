import 'package:flutter/material.dart';

import 'ott3loginfinal.dart';
import 'ott4signpagefinal.dart';


class ottfirst extends StatefulWidget {
  const ottfirst({super.key});

  @override
  State<ottfirst> createState() => _ottfirstState();
}

class _ottfirstState extends State<ottfirst> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xff243c5c),
        body: SafeArea(
          child: Container(
            width: double.infinity,
            height: MediaQuery.of(context).size.height,
            child: Padding(
              padding: EdgeInsets.symmetric(
                horizontal: 30,
                vertical: 5,
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  ///Intro details

                  Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        "Welcome",
                        style: TextStyle(
                          fontSize: 30,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Text(
                        "Automatic identity verification which "
                        "enable you to verify your identity",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 15,
                          color: Colors.grey,
                        ),
                      ),
                    ],
                  ),

                  ///intro image

                  Container(
                    height: MediaQuery.of(context).size.height / 3,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage("assets/img/tktf.jpg")),
                    ),
                  ),

                  Container(
                    padding: EdgeInsets.only(
                      top: 3,
                      right: 3,
                    ),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      // border: Border(
                      //   bottom: BorderSide(color: Colors.black),
                      //   top: BorderSide(color: Colors.black),
                      //   left: BorderSide(color: Colors.black),
                      //   right: BorderSide(color: Colors.black),
                      // ),
                    ),

                    ///login details

                    child: Column(
                      children: [
                        MaterialButton(
                          minWidth: double.infinity,
                          height: 60,
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => ottlogin(),
                              ),
                            );
                          },
                          shape: RoundedRectangleBorder(
                            side: BorderSide(color: Colors.black),
                            borderRadius: BorderRadius.circular(50),
                          ),
                          child: Text(
                            "Login",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 20,
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 20,
                        ),

                        ///sign up details

                        Column(
                          children: [
                            Container(
                              padding: EdgeInsets.only(
                                top: 3,
                                right: 3,
                              ),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                // border: Border(
                                //   bottom: BorderSide(color: Colors.black),
                                //   top: BorderSide(color: Colors.black),
                                //   left: BorderSide(color: Colors.black),
                                //   right: BorderSide(color: Colors.black),
                                // ),
                              ),
                              child: MaterialButton(
                                minWidth: double.infinity,
                                height: 60,
                                onPressed: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) => ottsingup(),
                                    ),
                                  );
                                },
                                //color: Colors.amber,
                                elevation: 0,
                                shape: RoundedRectangleBorder(
                                  side: BorderSide(color: Colors.black),
                                  borderRadius: BorderRadius.circular(50),
                                ),
                                child: Text(
                                  "Sign Up",
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 20,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ));
  }
}
