import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:kumon_addexc/futureperfect.dart';
import 'package:kumon_addexc/futureprogressive.dart';
import 'package:kumon_addexc/pastfuture.dart';
import 'package:kumon_addexc/pastperfect.dart';
import 'package:kumon_addexc/pastperfectprogressive.dart';
import 'package:kumon_addexc/pastprogressive.dart';
import 'package:kumon_addexc/presentperfect.dart';
import 'package:kumon_addexc/presentperfectprogressive.dart';
import 'package:kumon_addexc/presentprogressive.dart';
import 'package:kumon_addexc/simplefuture.dart';
import 'package:kumon_addexc/simplepast.dart';
import 'package:kumon_addexc/simplepresent.dart';

class Writing extends StatefulWidget {
  

  @override
  State<Writing> createState() => _WritingState();
}

class _WritingState extends State<Writing> {
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
        body: Center(
          child: ListView(children: [
            Column(children: [
              Container(
                  decoration: BoxDecoration(
                    color: Colors.amber[100],
                  ),
                  height: 250,
                  width: 400,
                  padding: EdgeInsets.all(30),
                  child: Column(children: [
                    Text(
                      "Tenses Lists",
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
                          "https://cdn-icons-png.flaticon.com/512/1170/1170170.png"),
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
                          elevation: 10,
                            shadowColor: Colors.pink,
                            shape: CircleBorder(),
                            primary: Colors.pink[200],
                            onPrimary: Colors.white,
                            
                            alignment: Alignment.center,
                            fixedSize: Size(150, 150),
                            padding: EdgeInsets.all(5),
                            side: BorderSide.none),
                        onPressed: () {
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context) {
                            return SimplePresent();
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
                          elevation: 10,
                            shadowColor: Colors.pink,
                            shape: CircleBorder(),
                            primary: Colors.pink[200],
                            onPrimary: Colors.white,
                            
                            alignment: Alignment.center,
                            fixedSize: Size(150, 150),
                            padding: EdgeInsets.all(5),
                            side: BorderSide.none),
                        onPressed: () {
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context) {
                            return PresentProgressive();
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
                            primary: Colors.pink[200],
                            onPrimary: Colors.white,
                            elevation: 10,
                            shadowColor: Colors.pink,
                            alignment: Alignment.center,
                            fixedSize: Size(150, 150),
                            padding: EdgeInsets.all(5),
                            side: BorderSide.none),
                        onPressed: () {
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context) {
                            return PresentPerfect();
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
                            primary: Colors.pink[200],
                            onPrimary: Colors.white,
                           elevation: 10,
                            shadowColor: Colors.pink,
                            alignment: Alignment.center,
                            fixedSize: Size(150, 150),
                            padding: EdgeInsets.all(5),
                            side: BorderSide.none),
                        onPressed: () {
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context) {
                            return PresentPerfectProgressive();
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
                            primary: Colors.pink[200],
                            onPrimary: Colors.white,
                            elevation: 10,
                            shadowColor: Colors.pink,
                            alignment: Alignment.center,
                            fixedSize: Size(150, 150),
                            padding: EdgeInsets.all(5),
                            side: BorderSide.none),
                        onPressed: () {
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context) {
                            return SimplePast();
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
                            primary: Colors.pink[200],
                            onPrimary: Colors.white,
                            elevation: 10,
                            shadowColor: Colors.pink,
                            alignment: Alignment.center,
                            fixedSize: Size(150, 150),
                            padding: EdgeInsets.all(5),
                            side: BorderSide.none),
                        onPressed: () {
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context) {
                            return PastProgressive();
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
                            primary: Colors.pink[200],
                            onPrimary: Colors.white,
                            elevation: 10,
                            shadowColor: Colors.pink,
                            alignment: Alignment.center,
                            fixedSize: Size(150, 150),
                            padding: EdgeInsets.all(5),
                            side: BorderSide.none),
                        onPressed: () {
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context) {
                            return PastPerfect();
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
                            primary: Colors.pink[200],
                            onPrimary: Colors.white,
                            elevation: 10,
                            shadowColor: Colors.pink,
                            alignment: Alignment.center,
                            fixedSize: Size(150, 150),
                            padding: EdgeInsets.all(5),
                            side: BorderSide.none),
                        onPressed: () {
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context) {
                            return PastPerfectProgressive();
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
                            primary: Colors.pink[200],
                            onPrimary: Colors.white,
                            elevation: 10,
                            shadowColor: Colors.pink,
                            alignment: Alignment.center,
                            fixedSize: Size(150, 150),
                            padding: EdgeInsets.all(5),
                            side: BorderSide.none),
                        onPressed: () {
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context) {
                            return SimpleFuture();
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
                            primary: Colors.pink[200],
                            onPrimary: Colors.white,
                           elevation: 10,
                            shadowColor: Colors.pink,
                            alignment: Alignment.center,
                            fixedSize: Size(150, 150),
                            padding: EdgeInsets.all(5),
                            side: BorderSide.none),
                        onPressed: () {
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context) {
                            return FutureProgressive();
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
                            primary: Colors.pink[200],
                            onPrimary: Colors.white,
                            elevation: 10,
                            shadowColor: Colors.pink,
                            alignment: Alignment.center,
                            fixedSize: Size(150, 150),
                            padding: EdgeInsets.all(5),
                            side: BorderSide.none),
                        onPressed: () {
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context) {
                            return PastFuture();
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
                            primary: Colors.pink[200],
                            onPrimary: Colors.white,
                            elevation: 10,
                            shadowColor: Colors.pink,
                            alignment: Alignment.center,
                            fixedSize: Size(150, 150),
                            padding: EdgeInsets.all(5),
                            side: BorderSide.none),
                        onPressed: () {
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context) {
                            return FuturePerfect();
                          }));
                        },
                        child: Text(
                          "Future Perfect",
                          style: TextStyle(
                              fontFamily: "LilitaOne",
                              fontSize: 25,
                              color: Colors.black),
                          textAlign: TextAlign.center,
                        ))
                  ],
                ),
              ),
            ]),
          ]),
        ));
  }
}
