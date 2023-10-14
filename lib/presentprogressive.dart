import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:kumon_addexc/presentprogressiveexc.dart';

class PresentProgressive extends StatefulWidget {
  @override
  State<PresentProgressive> createState() => _PresentProgressiveState();
}

class _PresentProgressiveState extends State<PresentProgressive> {
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
          child: ListView(
            children: [
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
                        "Simple Present Progressive Tense",
                        style: TextStyle(
                            fontFamily: "LilitaOne",
                            fontSize: 23,
                            color: Colors.black),
                        textAlign: TextAlign.center,
                      ),
                      SizedBox(height: 5, width: 5),
                      ClipOval(
                          child: Image(
                        image: AssetImage("images/asking.gif"),
                        height: 140,
                        width: 150,
                      ))
                    ])),
                SizedBox(width: 35, height: 35),
                Container(
                  decoration: BoxDecoration(color: Colors.pink[100]),
                  padding: EdgeInsets.all(20),
                  height: 200,
                  width: 350,
                  child: Text(
                    "Simple Present Progressive Tense adalah tense yang digunakan untuk menceritakan kegiatan yang sedang berlangsung. Susunan kalimatnya adalah Subject + Tobe 1 + Ving + Object/Modifier.",
                    style: TextStyle(
                      fontFamily: "Roboto",
                      fontSize: 20,
                      color: Colors.black,
                      textBaseline: TextBaseline.alphabetic,
                    ),
                    textAlign: TextAlign.justify,
                  ),
                ),
                SizedBox(width: 20, height: 20),
                Container(
                    width: 300,
                    height: 120,
                    child: Text(
                        "Berikut adalah time signals atau keterangan waktu sebagai tanda bahwa kalimat tersebut adalah kalimat Present Progressive Tense:",
                        style: TextStyle(
                            fontFamily: "Roboto",
                            fontSize: 20,
                            color: Colors.black),
                        textAlign: TextAlign.justify)),
                SizedBox(width: 20, height: 20),
                Table(
                  border: TableBorder.all(color: Color(0xFFFFFFFF)),
                  columnWidths: <int, TableColumnWidth>{
                    0: FixedColumnWidth(300),
                  },
                  defaultVerticalAlignment: TableCellVerticalAlignment.middle,
                  children: [
                    TableRow(children: [
                      Container(
                          padding: EdgeInsets.all(15),
                          width: 200,
                          height: 70,
                          color: Colors.pink[100],
                          child: Text(
                            "Time Signals",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                fontSize: 30,
                                fontFamily: "LilitaOne",
                                color: Colors.black,
                                fontWeight: FontWeight.bold),
                          ))
                    ]),
                    TableRow(children: [
                      Container(
                          padding: EdgeInsets.fromLTRB(0, 10, 0, 10),
                          width: 100,
                          height: 50,
                          color: Colors.pink[100],
                          child: Text(
                            "Now",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontSize: 20,
                              fontFamily: "Roboto",
                              color: Colors.black,
                            ),
                          ))
                    ]),
                    TableRow(children: [
                      Container(
                          padding: EdgeInsets.fromLTRB(0, 10, 0, 10),
                          width: 150,
                          height: 50,
                          color: Colors.pink[100],
                          child: Text(
                            "Right Now",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontSize: 20,
                              fontFamily: "Roboto",
                              color: Colors.black,
                            ),
                          ))
                    ]),
                    TableRow(children: [
                      Container(
                          padding: EdgeInsets.fromLTRB(0, 10, 0, 10),
                          width: 100,
                          height: 50,
                          color: Colors.pink[100],
                          child: Text(
                            "At this moment",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontSize: 20,
                              fontFamily: "Roboto",
                              color: Colors.black,
                            ),
                          ))
                    ]),
                    TableRow(children: [
                      Container(
                          padding: EdgeInsets.fromLTRB(0, 10, 0, 10),
                          width: 150,
                          height: 50,
                          color: Colors.pink[100],
                          child: Text(
                            "At present",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontSize: 20,
                              fontFamily: "Roboto",
                              color: Colors.black,
                            ),
                          ))
                    ]),
                  ],
                ),
                SizedBox(width: 20, height: 20),
                Image(
                    image: NetworkImage(
                        "https://i.pinimg.com/originals/b5/19/9a/b5199a4988c5e635cada26fdbbc5e2e6.gif"),
                    height: 130,
                    width: 130),
                Container(height: 20, width: 170),
                Container(
                  height: 40,
                  width: 400,
                  padding: EdgeInsets.all(5),
                  decoration: BoxDecoration(color: Colors.pink[100]),
                  child: Text(
                    "Examples of the Sentence",
                    style: TextStyle(
                        fontSize: 25,
                        fontFamily: "LilitaOne",
                        color: Colors.black),
                    textAlign: TextAlign.center,
                  ),
                ),
                SizedBox(width: 20, height: 20),
                Container(
                  height: 50,
                  width: 400,
                  padding: EdgeInsets.all(10),
                  child: Text("Subject + Tobe 1 + Ving + Object/Modifier",
                      style: TextStyle(
                          fontFamily: "Roboto",
                          fontSize: 20,
                          color: Colors.black,
                          fontWeight: FontWeight.bold),
                      textAlign: TextAlign.justify),
                ),
                SizedBox(width: 20, height: 20),
                Container(
                  height: 50,
                  width: 400,
                  padding: EdgeInsets.all(10),
                  child: Text("I am studying English now",
                      style: TextStyle(
                          fontFamily: "Roboto",
                          fontSize: 20,
                          color: Colors.black,
                          fontWeight: FontWeight.bold),
                      textAlign: TextAlign.center),
                ),
                SizedBox(width: 0, height: 0),
                Container(
                    height: 200,
                    width: 200,
                    padding: EdgeInsets.all(5),
                    decoration: BoxDecoration(
                        color: Colors.white,
                        border: Border.all(color: Color(0xFFFFECB3), width: 5),
                        borderRadius: BorderRadius.circular(10)),
                    child: Image(
                        image: NetworkImage(
                            "https://media.istockphoto.com/vectors/cartoon-little-boy-studying-on-the-table-vector-id1195695142?k=20&m=1195695142&s=170667a&w=0&h=2LErHwRiPP5FRSzCzG1wLsdLDjsoPVPAcFJrQQc-c8A="),
                        height: 200,
                        width: 200)),
                SizedBox(width: 20, height: 20),
                Container(
                  height: 50,
                  width: 400,
                  padding: EdgeInsets.all(10),
                  child: Text("She is sleeping in the bedroom now",
                      style: TextStyle(
                          fontFamily: "Roboto",
                          fontSize: 20,
                          color: Colors.black,
                          fontWeight: FontWeight.bold),
                      textAlign: TextAlign.center),
                ),
                SizedBox(width: 0, height: 0),
                Container(
                    height: 200,
                    width: 200,
                    padding: EdgeInsets.all(5),
                    decoration: BoxDecoration(
                        color: Colors.white,
                        border: Border.all(color: Color(0xFFFFECB3), width: 5),
                        borderRadius: BorderRadius.circular(10)),
                    child: Image(
                        image: NetworkImage(
                            "https://us.123rf.com/450wm/pogorelovaolga/pogorelovaolga1810/pogorelovaolga181000153/114438628-the-girl-sleeps-in-bed-under-a-blanket-isolated-vector-illustration-in-flat-cartoon-style-.jpg?ver=6"),
                        height: 200,
                        width: 200)),
                SizedBox(width: 20, height: 20),
                Container(
                  height: 50,
                  width: 400,
                  padding: EdgeInsets.all(10),
                  child: Text("He is reading newspaper now",
                      style: TextStyle(
                          fontFamily: "Roboto",
                          fontSize: 20,
                          color: Colors.black,
                          fontWeight: FontWeight.bold),
                      textAlign: TextAlign.center),
                ),
                SizedBox(width: 0, height: 0),
                Container(
                    height: 200,
                    width: 200,
                    padding: EdgeInsets.all(5),
                    decoration: BoxDecoration(
                        color: Colors.white,
                        border: Border.all(color: Color(0xFFFFECB3), width: 5),
                        borderRadius: BorderRadius.circular(10)),
                    child: Image(
                        image: NetworkImage(
                            "https://st2.depositphotos.com/1007566/11656/v/950/depositphotos_116560554-stock-illustration-man-reading-newspaper-cartoon-design.jpg"),
                        height: 200,
                        width: 200)),
                SizedBox(width: 20, height: 20),
                Container(
                  height: 50,
                  width: 400,
                  padding: EdgeInsets.all(10),
                  child: Text("We are watching TV right now",
                      style: TextStyle(
                          fontFamily: "Roboto",
                          fontSize: 20,
                          color: Colors.black,
                          fontWeight: FontWeight.bold),
                      textAlign: TextAlign.center),
                ),
                SizedBox(width: 0, height: 0),
                Container(
                    height: 200,
                    width: 200,
                    padding: EdgeInsets.all(5),
                    decoration: BoxDecoration(
                        color: Colors.white,
                        border: Border.all(color: Color(0xFFFFECB3), width: 5),
                        borderRadius: BorderRadius.circular(10)),
                    child: Image(
                        image: NetworkImage(
                            "https://media.istockphoto.com/vectors/boys-and-girls-sitting-at-tv-screen-vector-id1220274244?k=20&m=1220274244&s=612x612&w=0&h=L6ofUsnKMsRd0gWHIVkdCdMwtia_-ZveQaZzPzYU70s="),
                        height: 200,
                        width: 200)),
                SizedBox(width: 20, height: 20),
                Container(
                  height: 50,
                  width: 400,
                  padding: EdgeInsets.all(10),
                  child: Text("They are playing soccer at present",
                      style: TextStyle(
                          fontFamily: "Roboto",
                          fontSize: 20,
                          color: Colors.black,
                          fontWeight: FontWeight.bold),
                      textAlign: TextAlign.center),
                ),
                SizedBox(width: 0, height: 0),
                Container(
                    height: 200,
                    width: 200,
                    padding: EdgeInsets.all(5),
                    decoration: BoxDecoration(
                        color: Colors.white,
                        border: Border.all(color: Color(0xFFFFECB3), width: 5),
                        borderRadius: BorderRadius.circular(10)),
                    child: Image(
                        image: NetworkImage(
                            "https://media.istockphoto.com/vectors/kids-playing-soccer-in-the-park-cartoon-vector-id804426154?k=20&m=804426154&s=170667a&w=0&h=FyG9QDSOhsdJCqrSST3ZCW5QE_HeQNlLd3rERdQk7CE="),
                        height: 200,
                        width: 200)),
                SizedBox(width: 20, height: 20),
                Container(
                  height: 50,
                  width: 400,
                  padding: EdgeInsets.all(10),
                  child: Text("The dog is running now",
                      style: TextStyle(
                          fontFamily: "Roboto",
                          fontSize: 20,
                          color: Colors.black,
                          fontWeight: FontWeight.bold),
                      textAlign: TextAlign.center),
                ),
                SizedBox(width: 0, height: 0),
                Container(
                    height: 200,
                    width: 200,
                    padding: EdgeInsets.all(5),
                    decoration: BoxDecoration(
                        color: Colors.white,
                        border: Border.all(color: Color(0xFFFFECB3), width: 5),
                        borderRadius: BorderRadius.circular(10)),
                    child: Image(
                        image: NetworkImage(
                            "https://media.istockphoto.com/vectors/cute-cartoon-dog-running-with-leash-vector-id1136485397?k=20&m=1136485397&s=170667a&w=0&h=dcdYiPheg0eseJ7VJr_lVM-KasBYlsSa-w6aqqw685c="),
                        height: 200,
                        width: 200)),
                SizedBox(width: 25, height: 25),
                Row(children: [
                  Container(height: 20, width: 130),
                  TextButton(
                      onPressed: () {},
                      child: Text("Exercise Question",
                          style: TextStyle(
                              fontSize: 25,
                              fontFamily: "LilitaOne",
                              color: Colors.black),
                          textAlign: TextAlign.right)),
                  IconButton(
                      onPressed: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) {
                          return PresentProgressiveExc();
                        }));
                      },
                      icon: Icon(Icons.arrow_forward_ios_sharp))
                ]),
                SizedBox(width: 25, height: 25),
              ])
            ],
          ),
        ));
  }
}
