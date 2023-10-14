import 'package:flutter/material.dart';
import 'package:kumon_addexc/answer.dart';
import 'package:kumon_addexc/answerpastperfect.dart';
import 'package:kumon_addexc/futureperfectquiz.dart';
import 'package:kumon_addexc/futureprogressivequiz.dart';
import 'package:kumon_addexc/listeningquiz.dart';
import 'package:kumon_addexc/loginpage.dart';
import 'package:kumon_addexc/pastfuturequiz.dart';
import 'package:kumon_addexc/pastperfectprogressivequiz.dart';
import 'package:kumon_addexc/pastperfectquiz.dart';
import 'package:kumon_addexc/pastprogressivequiz.dart';
import 'package:kumon_addexc/presentperfectprogressivequiz.dart';
import 'package:kumon_addexc/presentperfectquiz.dart';
import 'package:kumon_addexc/presentprogressivequiz.dart';
import 'package:kumon_addexc/simplefuturequiz.dart';
import 'package:kumon_addexc/simplepastquiz.dart';
import 'package:kumon_addexc/simplepresentquiz.dart';
import 'package:kumon_addexc/summary.dart';

class Quiz extends StatefulWidget {
  @override
  State<Quiz> createState() => _QuizState();
}

class _QuizState extends State<Quiz> {
 

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: PreferredSize(
            child: AppBar(
                leading: Builder(
                  builder: (BuildContext context) {
                    return IconButton(
                      icon: CircleAvatar(
                          backgroundColor: Colors.white,
                          backgroundImage: NetworkImage(
                              'https://cdn-icons-png.flaticon.com/512/145/145867.png')),
                      onPressed: () {
                        Scaffold.of(context).openDrawer();
                      },
                      tooltip: MaterialLocalizations.of(context)
                          .openAppDrawerTooltip,
                    );
                  },
                ),
                actions: [
                  IconButton(
                      onPressed: () {},
                      icon: Image(
                          image: NetworkImage(
                              "https://cdn-icons-png.flaticon.com/512/5309/5309804.png")))
                ],
                flexibleSpace: Positioned(
                    left: 0,
                    bottom: 25,
                    child: Container(
                      padding: EdgeInsets.all(45),
                    )),
                backgroundColor: Colors.lightBlue[200]),
            preferredSize: Size.fromHeight(70)),
        body: ListView
        (children: [
          Container(
                  decoration: BoxDecoration(
                    color: Colors.amber[100],
                  ),
                  height: 250,
                  width: 400,
                  padding: EdgeInsets.all(30),
                  child: Column(children: [
                    Text(
                      "Quiz",
                      style: TextStyle(
                          fontFamily: "LilitaOne",
                          fontSize: 45,
                          color: Colors.black),
                      textAlign: TextAlign.center,
                    ),
                    SizedBox(height: 20, width: 20),
                    ClipOval(
                        child: Image(
                      image: NetworkImage(
                          "https://cdn-icons-png.flaticon.com/512/3874/3874176.png"),
                      height: 100,
                      width: 170,
                    )),
                  ])),
              SizedBox(height: 20, width: 20),
              Container(
                padding: EdgeInsets.all(20),
                child: Row(
                  children: [
                    ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            shape: CircleBorder(),
                            primary: Colors.green[300],
                            onPrimary: Colors.white,
                            elevation: 10,
                            shadowColor: Colors.green,
                            alignment: Alignment.center,
                            fixedSize: Size(150, 150),
                            padding: EdgeInsets.all(5),
                            side: BorderSide.none),
                        onPressed: () {
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context) {
                            return QuizPresent();
                          }));
                        },
                        child: Text("Simple Present",
                            style: TextStyle(
                              fontFamily: "LilitaOne",
                              fontSize: 25,
                              color: Colors.black,
                            ),
                            textAlign: TextAlign.center)),
                    SizedBox(height: 20, width: 50),
                    ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            shape: CircleBorder(),
                            primary: Colors.green[300],
                            onPrimary: Colors.white,
                             elevation: 10,
                            shadowColor: Colors.green,
                            alignment: Alignment.center,
                            fixedSize: Size(150, 150),
                            padding: EdgeInsets.all(5),
                            side: BorderSide.none),
                        onPressed: () {
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context) {
                            return QuizPresentProg();
                          }));
                        },
                        child: Text(
                          "Simple Present Progressive",
                          style: TextStyle(
                              fontFamily: "LilitaOne",
                              fontSize: 25,
                              color: Colors.black),
                          textAlign: TextAlign.center,
                        ))
                  ],
                ),
              ),
              Container(
                padding: EdgeInsets.all(20),
                child: Row(
                  children: [
                    ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            shape: CircleBorder(),
                            primary: Colors.green[300],
                            onPrimary: Colors.white,
                             elevation: 10,
                            shadowColor: Colors.green,
                            alignment: Alignment.center,
                            fixedSize: Size(150, 150),
                            padding: EdgeInsets.all(5),
                            side: BorderSide.none),
                        onPressed: () {
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context) {
                            return QuizPresentPerfect();
                          }));
                        },
                        child: Text("Present Perfect",
                            style: TextStyle(
                              fontFamily: "LilitaOne",
                              fontSize: 25,
                              color: Colors.black,
                            ),
                            textAlign: TextAlign.center)),
                    SizedBox(height: 20, width: 50),
                    ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            shape: CircleBorder(),
                            primary: Colors.green[300],
                            onPrimary: Colors.white,
                             elevation: 10,
                            shadowColor: Colors.green,
                            alignment: Alignment.center,
                            fixedSize: Size(150, 150),
                            padding: EdgeInsets.all(5),
                            side: BorderSide.none),
                        onPressed: () {
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context) {
                            return QuizPresentPerfectProg();
                          }));
                        },
                        child: Text(
                          "Present Perfect Progressive",
                          style: TextStyle(
                              fontFamily: "LilitaOne",
                              fontSize: 25,
                              color: Colors.black),
                          textAlign: TextAlign.center,
                        ))
                  ],
                ),
              ),
              Container(
                padding: EdgeInsets.all(20),
                child: Row(
                  children: [
                    ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            shape: CircleBorder(),
                            primary: Colors.green[300],
                            onPrimary: Colors.white,
                             elevation: 10,
                            shadowColor: Colors.green,
                            alignment: Alignment.center,
                            fixedSize: Size(150, 150),
                            padding: EdgeInsets.all(5),
                            side: BorderSide.none),
                        onPressed: () {
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context) {
                            return QuizPast();
                          }));
                        },
                        child: Text("Simple Past",
                            style: TextStyle(
                              fontFamily: "LilitaOne",
                              fontSize: 25,
                              color: Colors.black,
                            ),
                            textAlign: TextAlign.center)),
                    SizedBox(height: 20, width: 50),
                    ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            shape: CircleBorder(),
                            primary: Colors.green[300],
                            onPrimary: Colors.white,
                             elevation: 10,
                            shadowColor: Colors.green,
                            alignment: Alignment.center,
                            fixedSize: Size(150, 150),
                            padding: EdgeInsets.all(5),
                            side: BorderSide.none),
                        onPressed: () {
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context) {
                            return QuizPastProg();
                          }));
                        },
                        child: Text(
                          "Past Progressive",
                          style: TextStyle(
                              fontFamily: "LilitaOne",
                              fontSize: 25,
                              color: Colors.black),
                          textAlign: TextAlign.center,
                        ))
                  ],
                ),
              ),
              Container(
                padding: EdgeInsets.all(20),
                child: Row(
                  children: [
                    ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            shape: CircleBorder(),
                            primary: Colors.green[300],
                            onPrimary: Colors.white,
                             elevation: 10,
                            shadowColor: Colors.green,
                            alignment: Alignment.center,
                            fixedSize: Size(150, 150),
                            padding: EdgeInsets.all(5),
                            side: BorderSide.none),
                        onPressed: () {
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context) {
                            return QuizPastPerfect();
                          }));
                        },
                        child: Text("Past Perfect",
                            style: TextStyle(
                              fontFamily: "LilitaOne",
                              fontSize: 25,
                              color: Colors.black,
                            ),
                            textAlign: TextAlign.center)),
                    SizedBox(height: 20, width: 50),
                    ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            shape: CircleBorder(),
                            primary: Colors.green[300],
                            onPrimary: Colors.white,
                            elevation: 10,
                            shadowColor: Colors.green,
                            alignment: Alignment.center,
                            fixedSize: Size(150, 150),
                            padding: EdgeInsets.all(5),
                            side: BorderSide.none),
                        onPressed: () {
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context) {
                            return QuizPastPerfectProg();
                          }));
                        },
                        child: Text(
                          "Past Perfect Progressive",
                          style: TextStyle(
                              fontFamily: "LilitaOne",
                              fontSize: 25,
                              color: Colors.black),
                          textAlign: TextAlign.center,
                        ))
                  ],
                ),
              ),
              Container(
                padding: EdgeInsets.all(20),
                child: Row(
                  children: [
                    ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            shape: CircleBorder(),
                            primary: Colors.green[300],
                            onPrimary: Colors.white,
                             elevation: 10,
                            shadowColor: Colors.green,
                            alignment: Alignment.center,
                            fixedSize: Size(150, 150),
                            padding: EdgeInsets.all(5),
                            side: BorderSide.none),
                        onPressed: () {
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context) {
                            return QuizFuture();
                          }));
                        },
                        child: Text("Simple Future",
                            style: TextStyle(
                              fontFamily: "LilitaOne",
                              fontSize: 25,
                              color: Colors.black,
                            ),
                            textAlign: TextAlign.center)),
                    SizedBox(height: 20, width: 50),
                    ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            shape: CircleBorder(),
                            primary: Colors.green[300],
                            onPrimary: Colors.white,
                             elevation: 10,
                            shadowColor: Colors.green,
                            alignment: Alignment.center,
                            fixedSize: Size(150, 150),
                            padding: EdgeInsets.all(5),
                            side: BorderSide.none),
                        onPressed: () {
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context) {
                            return QuizFutureProg();
                          }));
                        },
                        child: Text(
                          "Future Progressive",
                          style: TextStyle(
                              fontFamily: "LilitaOne",
                              fontSize: 25,
                              color: Colors.black),
                          textAlign: TextAlign.center,
                        ))
                  ],
                ),
              ),
              Container(
                padding: EdgeInsets.all(20),
                child: Row(
                  children: [
                    ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            shape: CircleBorder(),
                            primary: Colors.green[300],
                            onPrimary: Colors.white,
                             elevation: 10,
                            shadowColor: Colors.green,
                            alignment: Alignment.center,
                            fixedSize: Size(150, 150),
                            padding: EdgeInsets.all(5),
                            side: BorderSide.none),
                        onPressed: () {
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context) {
                            return QuizPastFuture();
                          }));
                        },
                        child: Text("Past Future",
                            style: TextStyle(
                              fontFamily: "LilitaOne",
                              fontSize: 25,
                              color: Colors.black,
                            ),
                            textAlign: TextAlign.center)),
                    SizedBox(height: 20, width: 50),
                    ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            shape: CircleBorder(),
                            primary: Colors.green[300],
                            onPrimary: Colors.white,
                             elevation: 10,
                            shadowColor: Colors.green,
                            alignment: Alignment.center,
                            fixedSize: Size(150, 150),
                            padding: EdgeInsets.all(5),
                            side: BorderSide.none),
                        onPressed: () {
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context) {
                            return QuizFuturePerfect();
                          }));
                        },
                        child: Text(
                          "Future Perfect",
                          style: TextStyle(
                              fontFamily: "LilitaOne",
                              fontSize: 25,
                              color: Colors.black),
                          textAlign: TextAlign.center,
                        )),
                        

                  ],
                ),
                
                
              ),
              SizedBox(width: 35, height: 30),
                Row(
                  
                  children: [
                    Container(padding: EdgeInsets.fromLTRB(200, 0, 0, 0),),
                    ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          primary: Colors.pink[200],
                          onPrimary: Colors.white,
                          alignment: Alignment.center,
                          fixedSize: Size(150, 70),
                          padding: EdgeInsets.all(20),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(15)),
                        ),
                        onPressed: () {
                          Navigator.pushAndRemoveUntil(
                            context,
                            MaterialPageRoute(builder: (context) => LoginPage()),
                            (Route<dynamic> route) => false,
                          );
                        },
                        child: Text("Log Out",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                fontFamily: "PatuaOne",
                                fontSize: 20,
                                fontWeight: FontWeight.w300,
                                color: Colors.black))),
                  ],
                ),
                SizedBox(width: 25, height: 25),
        ]));
  }
}

