import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:kumon_addexc/futureprogressiveexc.dart';

class FutureProgressive extends StatefulWidget {
 

  @override
  State<FutureProgressive> createState() => _FutureProgressiveState();
}

class _FutureProgressiveState extends State<FutureProgressive> {
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
                  IconButton(onPressed: (){}, icon: Image(image: NetworkImage("https://cdn-icons-png.flaticon.com/512/5309/5309804.png")))
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
                        "Simple Future Progressive Tense",
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
                    "Simple Present Progressive Tense adalah tense yang digunakan untuk menceritakan kegiatan yang akan berlangsung dimasa depan. Susunan kalimatnya adalah Subject + Will + be + Ving + Object/Modifier.",
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
                        "Berikut adalah time signals atau keterangan waktu sebagai tanda bahwa kalimat tersebut adalah kalimat Future Progressive Tense:",
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
                            "Tomorrow",
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
                            "When",
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
                            "While",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontSize: 18,
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
                            "If",
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
                            "By this time tomorrow",
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
                            "At this time tomorrow",
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
                            "At the same time next week",
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
                  height: 70,
                  width: 400,
                  padding: EdgeInsets.all(10),
                  child: Text("Subject + will + be + Ving + Object/Modifier",
                  
                      style: TextStyle(
                          fontFamily: "Roboto",
                          fontSize: 20,
                          color: Colors.black,
                          fontWeight: FontWeight.bold),
                      textAlign: TextAlign.center),
                ),
                SizedBox(width: 20, height: 20),
                Container(
                  height: 70,
                  width: 400,
                  padding: EdgeInsets.all(10),
                  child: Text("We will be going to Egypt if they have time",
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
                            "https://img.freepik.com/free-vector/vector-egyptian-pyramid-cartoon-background_33099-1220.jpg?w=2000"),
                        height: 200,
                        width: 200)),
                SizedBox(width: 20, height: 20),
                Container(
                  height: 70,
                  width: 400,
                  padding: EdgeInsets.all(10),
                  child: Text("My mother will be teaching English tomorrow",
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
                            "https://img.freepik.com/free-vector/english-teacher-concept-illustration_114360-7477.jpg?t=st=1654703183~exp=1654703783~hmac=508064afa77635eb31c6c4184020da45f05b60b55acd42cc53f4a3abf7d8cb8f&w=740"),
                        height: 200,
                        width: 200)),
                SizedBox(width: 20, height: 20),
                Container(
                  height: 70,
                  width: 400,
                  padding: EdgeInsets.all(10),
                  child: Text("Those boys will be playing soccer by this time tomorrow",
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
                            "https://img.freepik.com/free-vector/boys-playing-football-together-two-happy-little-kids-playing-sport-uniforms-smiling-children-kicking-ball-by-foot-them-white-background_575670-1875.jpg?t=st=1654703277~exp=1654703877~hmac=9bd0e44412a7da79dee3f691a6f63be20036800a137f6e3f838e5378d45d83bc&w=740"),
                        height: 200,
                        width: 200)),
                SizedBox(width: 20, height: 20),
                Container(
                  height: 50,
                  width: 400,
                  padding: EdgeInsets.all(10),
                  child: Text("He will be sleeping tomorrow",
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
                            "https://img.freepik.com/free-vector/little-boy-lying-bed-counting-sheep_74855-7582.jpg?t=st=1654703458~exp=1654704058~hmac=018c411ea4bf6cb35bef04fec276961f917d5291af8c8826c34f697ad021258a&w=740"),
                        height: 200,
                        width: 200)),
                SizedBox(width: 20, height: 20),
                Container(
                  height: 70,
                  width: 400,
                  padding: EdgeInsets.all(10),
                  child: Text("I will be waiting for the bus while walking",
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
                            "https://img.freepik.com/free-vector/pupil-is-waiting-yellow-bus-travel-school-flat-vector-illustration_124715-1578.jpg?w=740"),
                        height: 200,
                        width: 200)),
                SizedBox(width: 20, height: 20),
                Container(
                  height: 70,
                  width: 400,
                  padding: EdgeInsets.all(10),
                  child: Text("The plant will be growing when I get home",
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
                            "https://img.freepik.com/free-photo/cropped-photo-womans-hands-holding-brown-pot-with-young-plant_171337-8046.jpg?t=st=1654703727~exp=1654704327~hmac=97f3648659585fe695062bb88327cc08aa86bcd062d78e99d78b8ba0a99ddf4d&w=740"),
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
                          return FutureProgressiveExc();
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
