import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:kumon_addexc/pastprogressiveexc.dart';

class PastProgressive extends StatefulWidget {
 

  @override
  State<PastProgressive> createState() => _PastProgressiveState();
}

class _PastProgressiveState extends State<PastProgressive> {
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
                        "Simple Past Progressive Tense",
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
                  height: 210,
                  width: 350,
                  child: Text(
                    "Simple Past Progressive Tense adalah tense yang digunakan untuk menceritakan kegiatan yang sedang berlangsung diwaktu lampau/masa lalu. Susunan kalimatnya adalah Subject + Tobe 2 + Ving + Object/Modifier.",
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
                            "Yesterday",
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
                            "This morning",
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
                            "Last (night, week, month, year)",
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
                            "(days, week, month, year) ago",
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
                            "The day before yesterday",
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
                  child: Text("Subject + Tobe 2 + Ving + Object/Modifier",
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
                  child: Text("I was walking at the park this morning",
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
                            "https://media.istockphoto.com/vectors/informational-flyer-guy-walks-in-park-cartoon-vector-id1170655152?k=20&m=1170655152&s=170667a&w=0&h=QiIXi1FuoSnhIDEMsqJRWCu8G60OpfSTyDORDgyUDoo="),
                        height: 200,
                        width: 200)),
                SizedBox(width: 20, height: 20),
                Container(
                  height: 50,
                  width: 400,
                  padding: EdgeInsets.all(10),
                  child: Text("They were shopping yesterday",
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
                            "https://t4.ftcdn.net/jpg/02/61/75/95/360_F_261759560_PWpLYND0jvCn8dQh5fpLxe33iwiiba3q.jpg"),
                        height: 300,
                        width: 200)),
                SizedBox(width: 20, height: 20),
                Container(
                  height: 50,
                  width: 400,
                  padding: EdgeInsets.all(10),
                  child: Text("He was watching TV last night",
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
                            "https://2rdnmg1qbg403gumla1v9i2h-wpengine.netdna-ssl.com/wp-content/uploads/sites/3/2019/12/man-watching-tv-650x428.jpg"),
                        height: 200,
                        width: 200)),
                SizedBox(width: 20, height: 20),
                Container(
                  height: 50,
                  width: 400,
                  padding: EdgeInsets.all(10),
                  child: Text("We were having a camp last week",
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
                            "https://img.freepik.com/free-vector/kids-have-fun-play-summer-camp_121223-1734.jpg"),
                        height: 200,
                        width: 200)),
                SizedBox(width: 20, height: 20),
                Container(
                  height: 50,
                  width: 400,
                  padding: EdgeInsets.all(10),
                  child: Text("She was going to the beach yesterday",
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
                            "https://images.assetsdelivery.com/compings_v2/jemastock/jemastock1812/jemastock181209613.jpg"),
                        height: 200,
                        width: 200)),
                SizedBox(width: 20, height: 20),
                Container(
                  height: 50,
                  width: 400,
                  padding: EdgeInsets.all(10),
                  child: Text("The cat was sleeping here last night",
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
                            "https://img.freepik.com/free-vector/cute-cat-sleeping-pillow-cartoon-illustration_257245-319.jpg"),
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
                          return PastProgressiveExc();
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
