import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:kumon_addexc/gantiprofil.dart';
import 'package:kumon_addexc/listening.dart';
import 'package:kumon_addexc/loginpage.dart';

import 'package:kumon_addexc/profil.dart';
import 'package:kumon_addexc/quiz.dart';
import 'package:kumon_addexc/simplepast.dart';
import 'package:kumon_addexc/simplepresent.dart';
import 'package:kumon_addexc/writing.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'gantiprofil.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    final Storage storage = Storage();
    return Scaffold(
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.fromLTRB(0, 0, 0, 20),
          children: [
            UserAccountsDrawerHeader(
              decoration: BoxDecoration(color: Colors.lightBlue[200]),
              accountName: StreamBuilder(
                      stream: FirebaseFirestore.instance
                          .collection('users')
                          .snapshots(),
                      builder:
                          (context, AsyncSnapshot<QuerySnapshot> snapshot) {
                        if (snapshot.hasData) {
                          return ListView.builder(
                            itemCount: snapshot.data!.docs.length,
                            itemBuilder:  (context, index) => 
                              Text(snapshot.data!.docs[index]['name'], textAlign: TextAlign.left,style: TextStyle(fontFamily: "PatuaOne", fontSize: 20, color: Colors.black),),
                            );
                        } else {
                          return Text(
                            ""
                          );
                        }
                      },
                    ),
              accountEmail: StreamBuilder(
                      stream: FirebaseFirestore.instance
                          .collection('users')
                          .snapshots(),
                      builder:
                          (context, AsyncSnapshot<QuerySnapshot> snapshot) {
                        if (snapshot.hasData) {
                          return ListView.builder(
                            itemCount: snapshot.data!.docs.length,
                            itemBuilder:  (context, index) => Container(
                              child: Text('Level' + " "+ snapshot.data!.docs[index]['level'], textAlign: TextAlign.left,style: TextStyle(fontFamily: "PatuaOne", fontSize: 20, color: Colors.black),),
                            ));
                        } else {
                          return Container();
                        }
                      },
                    ),
              currentAccountPicture: FutureBuilder(
                  future: storage.downloadURL("muslimgirl.png"),
                  builder:
                      (BuildContext context, AsyncSnapshot<String> snapshot) {
                    if (snapshot.connectionState == ConnectionState.done &&
                        snapshot.hasData) {
                      return Container(
                        padding: EdgeInsets.all(4),
                        height: 230,
                        width: 250,
                        child: Image.network(
                          snapshot.data!,
                        ),
                      );
                    }
                    
                    return Container();
                  }),
              currentAccountPictureSize: Size.square(50),
            ),
            ListTile(
              leading: IconButton(
                  focusColor: Colors.blueAccent,
                  onPressed: () {},
                  icon: CircleAvatar(
                    backgroundColor: Colors.white,
                    backgroundImage: NetworkImage(
                        'https://cdn-icons-png.flaticon.com/512/456/456212.png'),
                  )),
              title: const Text("Profile",
                  style: TextStyle(
                      fontFamily: "LilitaOne",
                      fontSize: 25,
                      color: Colors.black)),
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return Profil();
                }));
              },
            ),
            ListTile(
              leading: IconButton(
                  onPressed: () {},
                  icon: CircleAvatar(
                    backgroundColor: Colors.white,
                    backgroundImage: NetworkImage(
                        'https://cdn-icons-png.flaticon.com/512/177/177425.png'),
                  )),
              title: const Text("Check Score",
                  style: TextStyle(
                      fontFamily: "LilitaOne",
                      fontSize: 25,
                      color: Colors.black)),
              onTap: () {},
            ),
            
          ],
        ),
      ),
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(70),
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
                  tooltip:
                      MaterialLocalizations.of(context).openAppDrawerTooltip,
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
                child: Container(padding: EdgeInsets.all(45))),
            backgroundColor: Colors.lightBlue[200]),
      ),
      body: Container(
        color: CupertinoColors.extraLightBackgroundGray,
        child: ListView(children: [
          Container(
              padding: EdgeInsets.all(35),
              child: Center(
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Choose The Topics",
                        style: TextStyle(
                            fontSize: 35,
                            fontFamily: "PatuaOne",
                            color: Colors.black,
                            fontWeight: FontWeight.w700),
                      ),
                      SizedBox(
                        width: 35,
                        height: 35,
                      ),
                      ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            elevation: 10,
                            shadowColor: Colors.pink,
                              shape: CircleBorder(),
                              primary: Colors.pink[200],
                              onPrimary: Colors.black,
                              alignment: Alignment.center,
                              fixedSize: Size(200, 150),
                              padding: EdgeInsets.all(5),
                              side: BorderSide.none),
                          onPressed: () {
                            Navigator.push(context,
                                MaterialPageRoute(builder: (context) {
                              return Listening();
                            }));
                          },
                          child: ListView(children: [
                            ClipRRect(
                                child: Image(
                                    image: AssetImage(
                                        "images/earphoneitem.png"),
                                    height: 100,
                                    width: 100)),
                            SizedBox(width: 5, height: 5),
                            Text("Listening",
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                    fontFamily: "LilitaOne",
                                    fontSize: 20,
                                    color: Colors.black))
                          ])),
                      SizedBox(
                        width: 20,
                        height: 20,
                      ),
                      ElevatedButton(
                        
                          style: ElevatedButton.styleFrom(
                            elevation: 10,
                            shadowColor: Colors.pink,
                              shape: CircleBorder(),
                              primary: Colors.pink[200],
                              onPrimary: Colors.black,
                              alignment: Alignment.center,
                              fixedSize: Size(200, 150),
                              padding: EdgeInsets.all(5),
                              side: BorderSide.none),
                          onPressed: () {
                            Navigator.push(context,
                                MaterialPageRoute(builder: (context) {
                              return Writing();
                            }));
                          },
                          child: ListView(children: [
                            ClipRRect(
                                child: Image(
                                    image: AssetImage(
                                        "images/nulisitem.png"),
                                    height: 100,
                                    width: 100)),
                            SizedBox(width: 5, height: 5),
                            Text("Writing",
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                    fontFamily: "LilitaOne",
                                    fontSize: 20,
                                    color: Colors.black))
                          ])),
                      SizedBox(
                        width: 20,
                        height: 20,
                      ),
                      ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            elevation: 10,
                            shadowColor: Colors.pink,
                            primary: Colors.pink[200],
                            onPrimary: Colors.black,
                            alignment: Alignment.center,
                            fixedSize: Size(200, 150),
                            padding: EdgeInsets.all(10),
                            shape: CircleBorder(),
                            side: BorderSide.none,
                          ),
                          onPressed: () {
                            Navigator.push(context,
                                MaterialPageRoute(builder: (context) {
                              return Quiz();
                            }));
                          },
                          child: ListView(children: [
                            ClipRRect(
                                child: Image(
                                    image: AssetImage("images/quizbox.png"),
                                    height: 100,
                                    width: 100)),
                            SizedBox(width: 5, height: 5),
                            Text("Quiz",
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                    fontFamily: "LilitaOne",
                                    fontSize: 20,
                                    color: Colors.black))
                          ]))
                    ]),
              )),
        ]),
      ),
    );
  }
}
