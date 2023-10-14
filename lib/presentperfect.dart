import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:kumon_addexc/presentperfectexc.dart';

class PresentPerfect extends StatefulWidget {
  

  @override
  State<PresentPerfect> createState() => _PresentPerfectState();
}

class _PresentPerfectState extends State<PresentPerfect> {
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
                        "Simple Present Perfect Tense",
                        style: TextStyle(
                            fontFamily: "LilitaOne",
                            fontSize: 25,
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
                    "Simple Present Perfect Tense adalah tense yang digunakan untuk menceritakan kegiatan yang telah terjadi atau dilakukan sampai waktu saat ini. Susunan kalimat Present Perfect Tense adalah Subject + Have/Has + V3.",
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
                    height: 100,
                    child: Text(
                        "Berikut adalah time signals atau keterangan waktu sebagai tanda bahwa kalimat tersebut adalah kalimat Present Tense:",
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
                            "Already",
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
                            "Just",
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
                            "Yet",
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
                            "Ever, Never",
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
                            "Since",
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
                            "For",
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
                            "Once, Twice, Third, Fourth times, ... times",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontSize: 15,
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
                            "Before",
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
                    "Nominal Sentence",
                    style: TextStyle(
                        fontSize: 25,
                        fontFamily: "LilitaOne",
                        color: Colors.black),
                    textAlign: TextAlign.center,
                  ),
                ),
                SizedBox(width: 20, height: 20),
                DataTable(
                  decoration: BoxDecoration(
                      color: Colors.pink[100],
                      border: Border.all(color: Color(0xFFF06292), width: 5)),
                  headingRowColor: MaterialStateColor.resolveWith(
                    (states) {
                      return Color(0xFFFFECB3);
                    },
                  ),
                  dividerThickness: 3,
                  columnSpacing: 25,
                  headingRowHeight: 50,
                  dataRowHeight: 50,
                  dataTextStyle: TextStyle(
                      fontFamily: "Roboto",
                      fontSize: 10,
                      color: Colors.black),
                  headingTextStyle: TextStyle(
                      fontFamily: "LilitaOne",
                      fontSize: 15,
                      color: Colors.black),
                  columns: const <DataColumn>[
                    DataColumn(
                      label: Text(
                        'Affirmative(+)',
                        style: TextStyle(fontStyle: FontStyle.italic),
                      ),
                    ),
                    DataColumn(
                      label: Text(
                        'Negative(-)',
                        style: TextStyle(fontStyle: FontStyle.italic),
                      ),
                    ),
                    DataColumn(
                      label: Text(
                        'Interrogative(?)',
                        style: TextStyle(fontStyle: FontStyle.italic),
                      ),
                    ),
                  ],
                  rows: const <DataRow>[
                    DataRow(
                      cells: <DataCell>[
                        DataCell(Text('Subject + Have/Has + been + C')),
                        DataCell(Text('Subject + Have/Has + not + been + C')),
                        DataCell(Text(
                            ' Have/Has + Subject + been + C ?. Yes, S + have/has. No S + have + not')),
                      ],
                    ),
                    DataRow(
                      cells: <DataCell>[
                        DataCell(Text('He has been here since yesterday')),
                        DataCell(Text('He has been here since yesterday')),
                        DataCell(Text(
                            'Has he been here since yesterday? Yes, he has. No, he has not')),
                      ],
                    ),
                    DataRow(
                      cells: <DataCell>[
                        DataCell(Text('They have been in Japan for a long time')),
                        DataCell(Text('They have not been in Japan for a long time')),
                        DataCell(Text(
                            'Have they been in Japan for a long time?. Yes, they have. No, they have not')),
                      ],
                    ),
                    DataRow(
                      cells: <DataCell>[
                        DataCell(Text('It has been fat before')),
                        DataCell(Text('It has not been fat before')),
                        DataCell(Text(
                            'Has it been fat before?. Yes, It has. No, It has not')),
                      ],
                    ),
                  ],
                ),
                SizedBox(width: 20, height: 20),
                Table(
                    border: TableBorder.all(color: Color(0xFFFFFFFF)),
                    columnWidths: <int, TableColumnWidth>{
                      0: FixedColumnWidth(80),
                      1: FixedColumnWidth(80),
                    },
                    defaultVerticalAlignment: TableCellVerticalAlignment.middle,
                    children: [
                      TableRow(children: [
                        Container(
                          padding: EdgeInsets.fromLTRB(0, 5, 0, 5),
                          width: 50,
                          height: 30,
                          color: Colors.pink[300],
                          child: Text(
                            "Subject",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                fontSize: 15,
                                fontFamily: "Roboto",
                                color: Colors.black,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                        TableCell(
                            child: Container(
                          padding: EdgeInsets.fromLTRB(0, 5, 0, 5),
                          width: 50,
                          height: 30,
                          color: Colors.pink[300],
                          child: Text(
                            'Have/Has',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                fontFamily: "Roboto",
                                fontSize: 15,
                                color: Colors.black,
                                fontWeight: FontWeight.bold),
                          ),
                        ))
                      ]),
                      TableRow(
                        children: [
                          Container(
                            padding: EdgeInsets.fromLTRB(0, 5, 0, 5),
                            width: 50,
                            height: 30,
                            color: Colors.pink[300],
                            child: Text("I",
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                    fontFamily: "Roboto",
                                    fontSize: 15,
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold)),
                          ),
                          TableCell(
                              verticalAlignment:
                                  TableCellVerticalAlignment.middle,
                              child: Container(
                                padding: EdgeInsets.fromLTRB(0, 5, 0, 5),
                                width: 50,
                                height: 30,
                                color: Colors.pink[300],
                                child: Text("have",
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                        fontFamily: "Roboto",
                                        fontSize: 15,
                                        color: Colors.black)),
                              ))
                        ],
                      ),
                      TableRow(
                        children: [
                          Container(
                            padding: EdgeInsets.fromLTRB(0, 5, 0, 5),
                            width: 50,
                            height: 30,
                            color: Colors.pink[300],
                            child: Text("She",
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                    fontFamily: "Roboto",
                                    fontSize: 15,
                                    color: Colors.black)),
                          ),
                          TableCell(
                              verticalAlignment:
                                  TableCellVerticalAlignment.middle,
                              child: Container(
                                padding: EdgeInsets.fromLTRB(0, 5, 0, 5),
                                width: 50,
                                height: 30,
                                color: Colors.pink[300],
                                child: Text("has",
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                        fontFamily: "Roboto",
                                        fontSize: 15,
                                        color: Colors.black)),
                              ))
                        ],
                      ),
                      TableRow(
                        children: [
                          Container(
                            padding: EdgeInsets.fromLTRB(0, 5, 0, 5),
                            width: 50,
                            height: 30,
                            color: Colors.pink[300],
                            child: Text("He",
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                    fontFamily: "Roboto",
                                    fontSize: 15,
                                    color: Colors.black)),
                          ),
                          TableCell(
                              verticalAlignment:
                                  TableCellVerticalAlignment.middle,
                              child: Container(
                                padding: EdgeInsets.fromLTRB(0, 5, 0, 5),
                                width: 50,
                                height: 30,
                                color: Colors.pink[300],
                                child: Text("has",
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                        fontFamily: "Roboto",
                                        fontSize: 15,
                                        color: Colors.black)),
                              ))
                        ],
                      ),
                      TableRow(
                        children: [
                          Container(
                            padding: EdgeInsets.fromLTRB(0, 5, 0, 5),
                            width: 50,
                            height: 30,
                            color: Colors.pink[300],
                            child: Text("It",
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                    fontFamily: "Roboto",
                                    fontSize: 15,
                                    color: Colors.black)),
                          ),
                          TableCell(
                              verticalAlignment:
                                  TableCellVerticalAlignment.middle,
                              child: Container(
                                padding: EdgeInsets.fromLTRB(0, 5, 0, 5),
                                width: 50,
                                height: 30,
                                color: Colors.pink[300],
                                child: Text("has",
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                        fontFamily: "Roboto",
                                        fontSize: 15,
                                        color: Colors.black)),
                              ))
                        ],
                      ),
                      TableRow(
                        children: [
                          Container(
                            padding: EdgeInsets.fromLTRB(0, 5, 0, 5),
                            width: 50,
                            height: 30,
                            color: Colors.pink[300],
                            child: Text("You",
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                    fontFamily: "Roboto",
                                    fontSize: 15,
                                    color: Colors.black)),
                          ),
                          TableCell(
                              verticalAlignment:
                                  TableCellVerticalAlignment.middle,
                              child: Container(
                                padding: EdgeInsets.fromLTRB(0, 5, 0, 5),
                                width: 50,
                                height: 30,
                                color: Colors.pink[300],
                                child: Text("have",
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                        fontFamily: "Roboto",
                                        fontSize: 15,
                                        color: Colors.black)),
                              ))
                        ],
                      ),
                      TableRow(
                        children: [
                          Container(
                            padding: EdgeInsets.fromLTRB(0, 5, 0, 5),
                            width: 50,
                            height: 30,
                            color: Colors.pink[300],
                            child: Text("We",
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                    fontFamily: "Roboto",
                                    fontSize: 15,
                                    color: Colors.black)),
                          ),
                          TableCell(
                              verticalAlignment:
                                  TableCellVerticalAlignment.middle,
                              child: Container(
                                padding: EdgeInsets.fromLTRB(0, 5, 0, 5),
                                width: 50,
                                height: 30,
                                color: Colors.pink[300],
                                child: Text("have",
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                        fontFamily: "Roboto",
                                        fontSize: 15,
                                        color: Colors.black)),
                              ))
                        ],
                      ),
                      TableRow(
                        children: [
                          Container(
                            padding: EdgeInsets.fromLTRB(0, 5, 0, 5),
                            width: 50,
                            height: 30,
                            color: Colors.pink[300],
                            child: Text("They",
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                    fontFamily: "Roboto",
                                    fontSize: 15,
                                    color: Colors.black)),
                          ),
                          TableCell(
                              verticalAlignment:
                                  TableCellVerticalAlignment.middle,
                              child: Container(
                                padding: EdgeInsets.fromLTRB(0, 5, 0, 5),
                                width: 50,
                                height: 30,
                                color: Colors.pink[300],
                                child: Text("have",
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                        fontFamily: "Roboto",
                                        fontSize: 15,
                                        color: Colors.black)),
                              ))
                        ],
                      ),
                    ]),
                SizedBox(width: 20, height: 20),
                Container(
                  height: 40,
                  width: 400,
                  padding: EdgeInsets.all(5),
                  decoration: BoxDecoration(color: Colors.pink[100]),
                  child: Text(
                    "Verbal Sentence",
                    style: TextStyle(
                        fontSize: 25,
                        fontFamily: "LilitaOne",
                        color: Colors.black),
                    textAlign: TextAlign.center,
                  ),
                ),
                SizedBox(width: 20, height: 20),
                DataTable(
                  decoration: BoxDecoration(
                      color: Colors.pink[100],
                      border: Border.all(color: Color(0xFFF06292), width: 5)),
                  headingRowColor: MaterialStateColor.resolveWith(
                    (states) {
                      return Color(0xFFFFECB3);
                    },
                  ),
                  dividerThickness: 3,
                  columnSpacing: 25,
                  headingRowHeight: 50,
                  dataRowHeight: 50,
                  dataTextStyle: TextStyle(
                      fontFamily: "Roboto",
                      fontSize: 10,
                      color: Colors.black),
                  headingTextStyle: TextStyle(
                      fontFamily: "LilitaOne",
                      fontSize: 15,
                      color: Colors.black),
                  columns: const <DataColumn>[
                    DataColumn(
                      label: Text(
                        'Affirmative(+)',
                        style: TextStyle(fontStyle: FontStyle.italic),
                      ),
                    ),
                    DataColumn(
                      label: Text(
                        'Negative(-)',
                        style: TextStyle(fontStyle: FontStyle.italic),
                      ),
                    ),
                    DataColumn(
                      label: Text(
                        'Interrogative(?)',
                        style: TextStyle(fontStyle: FontStyle.italic),
                      ),
                    ),
                  ],
                  rows: const <DataRow>[
                    DataRow(
                      cells: <DataCell>[
                        DataCell(Text('Subject + Have/Has + V3 + O/M')),
                        DataCell(Text('Subject + Have/Has + not + V3 + O/M')),
                        DataCell(Text(
                            ' Have/Has + Subject + V3 + O/M ?. Yes, S + have/has. No S + have + not')),
                      ],
                    ),
                    DataRow(
                      cells: <DataCell>[
                        DataCell(Text('I have eaten lunch')),
                        DataCell(Text('I have not eaten lunch')),
                        DataCell(Text(
                            'Have you eaten lunch?. Yes, I have. No, I have not')),
                      ],
                    ),
                    DataRow(
                      cells: <DataCell>[
                        DataCell(Text('She has gone to London twice')),
                        DataCell(Text('She has not gone to London twice')),
                        DataCell(Text(
                            'Has she gone to London twice?. Yes, She has. No, He has not')),
                      ],
                    ),
                    DataRow(
                      cells: <DataCell>[
                        DataCell(Text('We have written this poem before')),
                        DataCell(Text('We have not written this poem before')),
                        DataCell(Text(
                            'Have you written this poem before?. Yes, We have. No, We have not')),
                      ],
                    ),
                  ],
                ),
                SizedBox(width: 20, height: 20),
                DataTable(
                  decoration: BoxDecoration(
                      color: Colors.pink[100],
                      border: Border.all(color: Color(0xFFF06292), width: 5)),
                  headingRowColor: MaterialStateColor.resolveWith(
                    (states) {
                      return Color(0xFFFFECB3);
                    },
                  ),
                  dividerThickness: 3,
                  columnSpacing: 20,
                  headingRowHeight: 50,
                  dataRowHeight: 40,
                  headingTextStyle: TextStyle(
                      fontFamily: "LilitaOne",
                      fontSize: 15,
                      color: Colors.black),
                  columns: const <DataColumn>[
                    DataColumn(
                      label: Text(
                        'Verb 1',
                        style: TextStyle(fontStyle: FontStyle.italic),
                      ),
                    ),
                    DataColumn(
                      label: Text(
                        'Verb 2',
                        style: TextStyle(fontStyle: FontStyle.italic),
                      ),
                    ),
                    DataColumn(
                      label: Text(
                        'Verb 3',
                        style: TextStyle(fontStyle: FontStyle.italic),
                      ),
                    ),
                    DataColumn(
                      label: Text(
                        'Meaning',
                        style: TextStyle(fontStyle: FontStyle.italic),
                      ),
                    ),
                  ],
                  rows: const <DataRow>[
                    DataRow(
                      cells: <DataCell>[
                        DataCell(Text('Go')),
                        DataCell(Text('Went')),
                        DataCell(Text('Gone')),
                        DataCell(Text('Pergi'))
                      ],
                    ),
                    DataRow(
                      cells: <DataCell>[
                        DataCell(Text('Sleep')),
                        DataCell(Text('Slept')),
                        DataCell(Text('Slept')),
                        DataCell(Text('Slept'))
                      ],
                    ),
                    DataRow(
                      cells: <DataCell>[
                        DataCell(Text('Walk')),
                        DataCell(Text('Walked')),
                        DataCell(Text('Walked')),
                        DataCell(Text('Berjalan'))
                      ],
                    ),
                    DataRow(
                      cells: <DataCell>[
                        DataCell(Text('Open')),
                        DataCell(Text('Opened')),
                        DataCell(Text('Opened')),
                        DataCell(Text('Membuka'))
                      ],
                    ),
                    DataRow(
                      cells: <DataCell>[
                        DataCell(Text('Drive')),
                        DataCell(Text('Drove')),
                        DataCell(Text('Driven')),
                        DataCell(Text('Menyetir'))
                      ],
                    ),
                    DataRow(
                      cells: <DataCell>[
                        DataCell(Text('See')),
                        DataCell(Text('Saw')),
                        DataCell(Text('Seen')),
                        DataCell(Text('Melihat'))
                      ],
                    ),
                    DataRow(
                      cells: <DataCell>[
                        DataCell(Text('Read')),
                        DataCell(Text('Read')),
                        DataCell(Text('Read')),
                        DataCell(Text('Membaca'))
                      ],
                    ),
                    DataRow(
                      cells: <DataCell>[
                        DataCell(Text('Run')),
                        DataCell(Text('Ran')),
                        DataCell(Text('Run')),
                        DataCell(Text('Berlari'))
                      ],
                    ),
                  ],
                ),
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
                          return PresentPerfectExc();
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
