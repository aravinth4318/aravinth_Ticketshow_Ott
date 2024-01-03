import 'package:flutter/material.dart';

import 'ott2firstpage.dart';

class ottsingup extends StatefulWidget {
  const ottsingup({super.key});

  @override
  State<ottsingup> createState() => _ottsingupState();
}

class _ottsingupState extends State<ottsingup> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(backgroundColor: Color(0xff243c5c),
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Color(0xff243c5c),
        leading: GestureDetector(
          child: Icon(Icons.arrow_back_ios,color: Colors.white,),
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => ottfirst(),
              ),
            );
          },
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [

            Container(
              height: MediaQuery.of(context).size.height,
              width: double.infinity,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage("assets/img/ab.jpg"),),),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  //Image(image: AssetImage("assets/img/log2.jpg"),),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Text(
                        "Sign up",
                        style: TextStyle(
                            fontSize: 30,
                            fontWeight: FontWeight.bold,
                            color: Colors.white),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Text(
                        "Create an account, It's free",
                        style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                            color: Colors.grey),
                      ),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.all(20),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        makeInput(lable: "Email"),
                        makeInput(lable: "Password", obsCureText: true),
                        makeInput(lable: "Confirm Password", obsCureText: true),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 40),
                    child: Container(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          MaterialButton(
                            minWidth: double.infinity,
                            height: 60,
                            onPressed: () {},
                            color: Color(0xff243c5c),
                            shape: RoundedRectangleBorder(
                              side: BorderSide(color: Colors.black),
                              borderRadius: BorderRadius.circular(50),
                            ),
                            child: Text(
                              "Sign up",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 20,

                              ),
                            ),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                "Already have an account",
                                style: TextStyle(fontSize: 15,
                                color: Colors.grey),
                              ),
                              SizedBox(width: 5,),
                              Text(
                                "Login",
                                style: TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 15),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 10,
                          ),

                          ///last image

                          // Container(
                          //   height: MediaQuery.of(context).size.height / 3,
                          //   decoration: BoxDecoration(
                          //     image: DecorationImage(
                          //       image: AssetImage("assets/img/log2.jpg"),
                          //       fit: BoxFit.cover,
                          //     ),
                          //   ),
                          // ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

Widget makeInput({lable, obsCureText = false}) {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Text(
        lable,
        style: TextStyle(
            fontSize: 15, fontWeight: FontWeight.w400, color: Colors.white),
      ),
      SizedBox(
        height: 10,
      ),
      TextFormField(
        obscureText: obsCureText,
        decoration: InputDecoration(
            contentPadding: EdgeInsets.symmetric(vertical: 0, horizontal: 10),
            enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.grey),
            ),
            border:
                OutlineInputBorder(borderSide: BorderSide(color: Colors.grey))),
      ),
      SizedBox(
        height: 30,
      ),
    ],
  );
}
