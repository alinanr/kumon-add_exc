import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart' as firebase_storage;
import 'package:kumon_addexc/home.dart';
import 'package:firebase_storage/firebase_storage.dart' as firebase_storage;
import 'dart:ui';

class GantiProfil extends StatefulWidget {
  @override
  State<GantiProfil> createState() => _GantiProfilState();
}

class _GantiProfilState extends State<GantiProfil> {
  String image1 = "images/userprofil.png";
  String image2 = 'images/muslimgirl.png';
  String image3 = 'images/kacamataboy.png';
  String image4 = 'images/longhairgirl.png';
  late String gantiGambar;

  void change() {
    setState(() {
      gantiGambar = image1;
      image1 = image2;
      gantiGambar = image2;
    });
  }

  @override
  Widget build(BuildContext context) {
    final Storage storage = Storage();
    return Scaffold(
        body: Container(
      color: Colors.white,
      padding: EdgeInsets.fromLTRB(25, 10, 20, 10),
      child: ListView(
        children: [
          Center(
            child:
                Column(mainAxisAlignment: MainAxisAlignment.center, children: [
              Row(mainAxisAlignment: MainAxisAlignment.end, children: [
                CircleAvatar(
                  backgroundColor: Colors.white,
                  child: Image(image: AssetImage("images/home-button.png")),
                ),
                IconButton(
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) {
                        return Home();
                      }));
                    },
                    icon: Icon(Icons.arrow_forward_rounded))
              ]),
              SizedBox(height: 20),
              Container(
                padding: EdgeInsets.fromLTRB(0, 5, 0, 0),
                height: 80,
                width: 700,
                child: Text(
                  "Profile",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontFamily: "LilitaOne",
                      fontSize: 45,
                      color: Colors.black),
                ),
              ),
              SizedBox(width: 20, height: 20),
              FutureBuilder(
                                    future:
                                        storage.downloadURL("muslimgirl.png"),
                                    builder: (BuildContext context,
                                        AsyncSnapshot<String> snapshot) {
                                      if (snapshot.connectionState ==
                                              ConnectionState.done &&
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
              SizedBox(width: 5, height: 5),
              Container(
                padding: EdgeInsets.all(5),
                height: 50,
                width: 170,
                child: StreamBuilder(
                  stream: FirebaseFirestore.instance
                      .collection('users')
                      .snapshots(),
                  builder: (context, AsyncSnapshot<QuerySnapshot> snapshot) {
                    if (snapshot.hasData) {
                      return ListView.builder(
                          itemCount: snapshot.data!.docs.length,
                          itemBuilder: (context, index) => Container(
                                child: Text(
                                  snapshot.data!.docs[index]['name'],
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                      fontFamily: "LilitaOne",
                                      fontSize: 35,
                                      color: Colors.black),
                                ),
                              ));
                    } else {
                      return Container();
                    }
                  },
                ),
              )
            ]),
          ),
          SizedBox(width: 25, height: 25),
          Text("You can change into another avatar",
              textAlign: TextAlign.center,
              style: TextStyle(
                  fontFamily: "LilitaOne", fontSize: 25, color: Colors.black)),
          SizedBox(height: 20, width: 20),
          Row(
            children: [
              FutureBuilder(
                future: storage.listFiles(),
                builder: ((BuildContext context,
                    AsyncSnapshot<firebase_storage.ListResult> snapshot) {
                  if (snapshot.connectionState == ConnectionState.done &&
                      snapshot.hasData) {
                    return Container(
                      child: ListView.builder(
                          itemCount: snapshot.data!.items.length,
                          itemBuilder: (BuildContext context, int index) {
                            return ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                  shape: CircleBorder(),
                                  primary: Colors.amber[100],
                                  shadowColor: Colors.white,
                                  fixedSize: Size(100, 80),
                                  alignment: Alignment.center),
                              onPressed: () {
                                FutureBuilder(
                                    future:
                                        storage.downloadURL("muslimgirl.png"),
                                    builder: (BuildContext context,
                                        AsyncSnapshot<String> snapshot) {
                                      if (snapshot.connectionState ==
                                              ConnectionState.done &&
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
                                    });
                              },
                              child: ClipOval(
                                  child:
                                      Text(snapshot.data!.items[index].name)),
                            );
                          }),
                    );
                  }

                  return Container();
                }),
              ),
              SizedBox(height: 10, width: 15),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                    shape: CircleBorder(),
                    primary: Colors.amber[100],
                    shadowColor: Colors.white,
                    fixedSize: Size(100, 80),
                    alignment: Alignment.center),
                onPressed: () {
                  change();
                },
                child: ClipOval(
                  child: Image(
                      image: AssetImage("images/kacamataboy.png"),
                      height: 100,
                      width: 100),
                ),
              ),
              SizedBox(height: 10, width: 15),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                    shape: CircleBorder(),
                    primary: Colors.amber[100],
                    shadowColor: Colors.white,
                    fixedSize: Size(100, 80),
                    alignment: Alignment.center),
                onPressed: () {
                  change();
                },
                child: ClipOval(
                  child: Image(
                      image: AssetImage("images/longhairgirl.png"),
                      height: 100,
                      width: 100),
                ),
              ),
              SizedBox(height: 15, width: 15),
            ],
          ),
          SizedBox(width: 15, height: 15),
          Container(
            padding: EdgeInsets.all(5),
            height: 50,
            width: 150,
            child: StreamBuilder(
              stream:
                  FirebaseFirestore.instance.collection('users').snapshots(),
              builder: (context, AsyncSnapshot<QuerySnapshot> snapshot) {
                if (snapshot.hasData) {
                  return ListView.builder(
                      itemCount: snapshot.data!.docs.length,
                      itemBuilder: (context, index) => Container(
                            child: Text(
                              'Level' +
                                  " " +
                                  " " +
                                  snapshot.data!.docs[index]['level'],
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  fontFamily: "LilitaOne",
                                  fontSize: 35,
                                  color: Colors.black),
                            ),
                          ));
                } else {
                  return Container();
                }
              },
            ),
          ),
          SizedBox(width: 20, height: 20),
          Container(
            height: 100,
            width: 100,
            child: ClipOval(
              child: Image(image: AssetImage("images/levelK.jpeg")),
            ),
          ),
          SizedBox(width: 15, height: 15),
          Container(
            padding: EdgeInsets.all(5),
            height: 50,
            width: 250,
            child: StreamBuilder(
              stream:
                  FirebaseFirestore.instance.collection('users').snapshots(),
              builder: (context, AsyncSnapshot<QuerySnapshot> snapshot) {
                if (snapshot.hasData) {
                  return ListView.builder(
                      itemCount: snapshot.data!.docs.length,
                      itemBuilder: (context, index) => Container(
                            child: Text(
                              'Grade' +
                                  " " +
                                  " " +
                                  snapshot.data!.docs[index]['class'] +
                                  "th",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  fontFamily: "LilitaOne",
                                  fontSize: 35,
                                  color: Colors.black),
                            ),
                          ));
                } else {
                  return Container();
                }
              },
            ),
          ),
          SizedBox(height: 15),
          SizedBox(
            width: 25,
            height: 25,
          )
        ],
      ),
    ));
  }
}

class Storage {
  final firebase_storage.FirebaseStorage storage =
      firebase_storage.FirebaseStorage.instance;

  Future<firebase_storage.ListResult> listFiles() async {
    firebase_storage.ListResult results = await storage.ref('test').listAll();

    results.items.forEach((firebase_storage.Reference ref) {
      print("Found file: $ref");
    });
    return results;
  }

  Future<String> downloadURL(String imageName) async {
    String downloadURL = await storage.ref("test/$imageName").getDownloadURL();

    return downloadURL;
  }
}
