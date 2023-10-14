import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:kumon_addexc/pasttenseexc.dart';

class SimplePast extends StatefulWidget {
 
  @override
  State<SimplePast> createState() => _SimplePastState();
}

class _SimplePastState extends State<SimplePast> {
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
                        "Simple Past Tense",
                        style: TextStyle(
                            fontFamily: "LilitaOne",
                            fontSize: 35,
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
                    "Simple Past Tense adalah tense yang digunakan untuk menggambarkan kegiatan yang telah dilakukan di waktu lampau. Simple Past Tense memiliki dua jenis kalimat yaitu Nominal dan Verbal.",
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
                        "Berikut adalah time signals atau keterangan waktu sebagai tanda bahwa kalimat tersebut adalah kalimat Past Tense:",
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
                      fontFamily: "Roboto", fontSize: 10, color: Colors.black),
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
                        DataCell(Text('Subject + Tobe 2 + C')),
                        DataCell(Text('Subject + Tobe 2 + not +  C')),
                        DataCell(Text(
                            ' Tobe 2 + Subject + C ?. Yes, S + tobe 2. No, S + tobe 2 + not')),
                      ],
                    ),
                    DataRow(
                      cells: <DataCell>[
                        DataCell(Text('I was in the bedroom last night')),
                        DataCell(Text('I was not in the bedroom last night')),
                        DataCell(Text(
                            'Were you in the bedroom last night? Yes, I was. No, I was not')),
                      ],
                    ),
                    DataRow(
                      cells: <DataCell>[
                        DataCell(Text('They were teachers a month ago')),
                        DataCell(Text('They were not teachers a month ago')),
                        DataCell(Text(
                            'Were they teachers a month ago?. Yes, they were. No, they were not')),
                      ],
                    ),
                    DataRow(
                      cells: <DataCell>[
                        DataCell(Text('He was sick yesterday')),
                        DataCell(Text('He was not sick yesterday')),
                        DataCell(Text(
                            'Was he sick yesterday?. Yes, He was. No, He was not')),
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
                            'Tobe 2',
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
                                child: Text("was",
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
                                child: Text("was",
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
                                child: Text("was",
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
                                child: Text("was",
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
                                child: Text("were",
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
                                child: Text("were",
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
                                child: Text("were",
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
                Container(
                    padding: EdgeInsets.all(10),
                    decoration: BoxDecoration(),
                    child: Text(
                      "Regular Verb 2 ",
                      style: TextStyle(
                          fontFamily: "LilitaOne",
                          fontSize: 35,
                          color: Colors.black),
                      textAlign: TextAlign.left,
                    )),
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
                  columnSpacing: 15,
                  headingRowHeight: 50,
                  dataRowHeight: 65,
                  headingTextStyle: TextStyle(
                      fontFamily: "LilitaOne",
                      fontSize: 15,
                      color: Colors.black),
                  columns: const <DataColumn>[
                    DataColumn(
                      label: Text(
                        '-d',
                        style: TextStyle(fontStyle: FontStyle.italic),
                      ),
                    ),
                    DataColumn(
                      label: Text(
                        'Meaning',
                        style: TextStyle(fontStyle: FontStyle.italic),
                      ),
                    ),
                    DataColumn(
                      label: Text(
                        '-ed',
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
                        DataCell(Text('close => closed')),
                        DataCell(Text('menutup')),
                        DataCell(Text('open => opened')),
                        DataCell(Text('membuka')),
                      ],
                    ),
                    DataRow(
                      cells: <DataCell>[
                        DataCell(Text('create => created')),
                        DataCell(Text('menciptakan')),
                        DataCell(Text('cancel => canceled')),
                        DataCell(Text('membatalkan')),
                      ],
                    ),
                    DataRow(
                      cells: <DataCell>[
                        DataCell(Text('hike => hiked')),
                        DataCell(Text('mendaki')),
                        DataCell(Text('pray => prayed')),
                        DataCell(Text('berdoa')),
                      ],
                    ),
                    DataRow(
                      cells: <DataCell>[
                        DataCell(Text('agree => agreed')),
                        DataCell(Text('setuju')),
                        DataCell(Text('call => called')),
                        DataCell(Text('memanggil')),
                      ],
                    ),
                  ],
                ),
                SizedBox(width: 25, height: 25),
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
                  dataRowHeight: 50,
                  headingTextStyle: TextStyle(
                      fontFamily: "LilitaOne",
                      fontSize: 15,
                      color: Colors.black),
                  columns: const <DataColumn>[
                    DataColumn(
                      label: Text(
                        'ied',
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
                        DataCell(Text('try => tried')),
                        DataCell(Text('mencoba'))
                      ],
                    ),
                    DataRow(
                      cells: <DataCell>[
                        DataCell(Text('cry => cried')),
                        DataCell(Text('menangis'))
                      ],
                    ),
                    DataRow(
                      cells: <DataCell>[
                        DataCell(Text('accompany => accompanied')),
                        DataCell(Text('menemani'))
                      ],
                    ),
                    DataRow(
                      cells: <DataCell>[
                        DataCell(Text('fly => flied')),
                        DataCell(Text('terbang'))
                      ],
                    ),
                    DataRow(
                      cells: <DataCell>[
                        DataCell(Text('Drive')),
                        DataCell(Text('Drove'))
                      ],
                    ),
                  ],
                ),
                SizedBox(width: 20, height: 20),
                Container(
                    padding: EdgeInsets.all(10),
                    decoration: BoxDecoration(),
                    child: Text(
                      "Irregular Verb 2 ",
                      style: TextStyle(
                          fontFamily: "LilitaOne",
                          fontSize: 35,
                          color: Colors.black),
                      textAlign: TextAlign.left,
                    )),
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
                  dataRowHeight: 50,
                  headingTextStyle: TextStyle(
                      fontFamily: "LilitaOne",
                      fontSize: 15,
                      color: Colors.black),
                  columns: const <DataColumn>[
                    DataColumn(
                      label: Text(
                        'Verb 1',
                        textAlign: TextAlign.center,
                        style: TextStyle(fontStyle: FontStyle.italic),
                      ),
                    ),
                    DataColumn(
                      label: Text(
                        'Verb 2',
                        textAlign: TextAlign.center,
                        style: TextStyle(fontStyle: FontStyle.italic),
                      ),
                    ),
                    DataColumn(
                      label: Text(
                        'Meaning',
                        textAlign: TextAlign.center,
                        style: TextStyle(fontStyle: FontStyle.italic),
                      ),
                    ),
                  ],
                  rows: const <DataRow>[
                    DataRow(
                      cells: <DataCell>[
                        DataCell(Text('sleep')),
                        DataCell(Text('slept')),
                        DataCell(Text('tidur'))
                      ],
                    ),
                    DataRow(
                      cells: <DataCell>[
                        DataCell(Text('read')),
                        DataCell(Text('read')),
                        DataCell(Text('meaning'))
                      ],
                    ),
                    DataRow(
                      cells: <DataCell>[
                        DataCell(Text('write')),
                        DataCell(Text('wrote')),
                        DataCell(Text('menulis'))
                      ],
                    ),
                    DataRow(
                      cells: <DataCell>[
                        DataCell(Text('drink')),
                        DataCell(Text('drank')),
                        DataCell(Text('minum'))
                      ],
                    ),
                    DataRow(
                      cells: <DataCell>[
                        DataCell(Text('eat')),
                        DataCell(Text('ate')),
                        DataCell(Text('makan'))
                      ],
                    ),
                    DataRow(
                      cells: <DataCell>[
                        DataCell(Text('sweep')),
                        DataCell(Text('swept')),
                        DataCell(Text('menyapu'))
                      ],
                    ),
                    DataRow(
                      cells: <DataCell>[
                        DataCell(Text('leave')),
                        DataCell(Text('left')),
                        DataCell(Text('meninggalkan'))
                      ],
                    ),
                    DataRow(
                      cells: <DataCell>[
                        DataCell(Text('see')),
                        DataCell(Text('saw')),
                        DataCell(Text('melihat'))
                      ],
                    ),
                    DataRow(
                      cells: <DataCell>[
                        DataCell(Text('get up')),
                        DataCell(Text('got up')),
                        DataCell(Text('bangun tidur'))
                      ],
                    ),
                    DataRow(
                      cells: <DataCell>[
                        DataCell(Text('buy')),
                        DataCell(Text('bought')),
                        DataCell(Text('membeli'))
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
                  columnSpacing: 25,
                  headingRowHeight: 50,
                  dataRowHeight: 50,
                  dataTextStyle: TextStyle(
                      fontFamily: "Roboto", fontSize: 10, color: Colors.black),
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
                        DataCell(Text('Subject + Verb 2 + O/M')),
                        DataCell(Text('Subject + did + not + Verb 1 + O/M')),
                        DataCell(Text(
                            ' Did + Subject + Verb 1 + O/M ?. Yes, S + did. No, S + did + not')),
                      ],
                    ),
                    DataRow(
                      cells: <DataCell>[
                        DataCell(Text('I slept on the sofa last night')),
                        DataCell(
                            Text('I did not sleep on the sofa last night')),
                        DataCell(Text(
                            'Did you sleep on the sofa last night? Yes, I did. No, I did not')),
                      ],
                    ),
                    DataRow(
                      cells: <DataCell>[
                        DataCell(Text('They wrote a novel last year')),
                        DataCell(Text('They did not write a novel last year')),
                        DataCell(Text(
                            'Did they write a novel last year?. Yes, they did. No, they did not')),
                      ],
                    ),
                    DataRow(
                      cells: <DataCell>[
                        DataCell(Text('She closed that store yesterday')),
                        DataCell(
                            Text('She did not close that store yesterday')),
                        DataCell(Text(
                            'Did she close that store yesterday?. Yes, She did. No, She did not')),
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
                          return PastTenseExc();
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
