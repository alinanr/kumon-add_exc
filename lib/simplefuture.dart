import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:kumon_addexc/futureexc.dart';

class SimpleFuture extends StatefulWidget {
  

  @override
  State<SimpleFuture> createState() => _SimpleFutureState();
}

class _SimpleFutureState extends State<SimpleFuture> {
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
                        "Simple Future Tense",
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
                  height: 240,
                  width: 350,
                  child: Text(
                    "Simple Future Tense adalah tense yang digunakan untuk menggambarkan kegiatan yang akan terjadi atau dilakukan di masa depan. Simple Future Tense memiliki dua jenis kalimat yaitu modal auxiliary(will) dan be going to.",
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
                        "Berikut adalah time signals atau keterangan waktu sebagai tanda bahwa kalimat tersebut adalah kalimat Future Tense:",
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
                            "The day after tomorrow",
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
                            "Next (week, month, year)",
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
                            "Later",
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
                            "Tonight",
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
                  height: 80,
                  width: 400,
                  padding: EdgeInsets.all(5),
                  decoration: BoxDecoration(color: Colors.green[200]),
                  child: Text(
                    "Modal Auxiliary (Will) => Kegiatan Tidak Direncanakan",
                    style: TextStyle(
                        fontSize: 25,
                        fontFamily: "LilitaOne",
                        color: Colors.black),
                    textAlign: TextAlign.center,
                  ),
                ),
                SizedBox(width: 20, height: 20),
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
                        DataCell(Text('Subject + will + be + C')),
                        DataCell(Text('Subject + will + not + be + C')),
                        DataCell(Text(
                            ' Will + Subject + be + C ?. Yes, S + will. No, S + will + not')),
                      ],
                    ),
                    DataRow(
                      cells: <DataCell>[
                        DataCell(Text('I will be teacher next month')),
                        DataCell(Text('I will not be a teacher next month')),
                        DataCell(Text(
                            'Will you be a teacher next month?. Yes, I will. No, I will not')),
                      ],
                    ),
                    DataRow(
                      cells: <DataCell>[
                        DataCell(Text('They will be here tomorrow')),
                        DataCell(Text('They will not be here tomorrow')),
                        DataCell(Text(
                            'Will they be here tomorrow?. Yes, they will. No, they will not')),
                      ],
                    ),
                    DataRow(
                      cells: <DataCell>[
                        DataCell(Text('She will be back soon')),
                        DataCell(Text('She will not be back soon')),
                        DataCell(Text(
                            'Will she be back soon?. Yes, She will. No, She will not')),
                      ],
                    ),
                  ],
                ),
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
                        DataCell(Text('Subject + will + Verb 1 + O/M')),
                        DataCell(Text('Subject + will + not + Verb 1 + O/M')),
                        DataCell(Text(
                            ' Will + Subject + Verb 1 + O/M ?. Yes, S + will. No, S + will + not')),
                      ],
                    ),
                    DataRow(
                      cells: <DataCell>[
                        DataCell(Text('We will go to America next week')),
                        DataCell(Text('We will not go to America next week')),
                        DataCell(Text(
                            'Will you go to America next week?. Yes, We will. No, We will not')),
                      ],
                    ),
                    DataRow(
                      cells: <DataCell>[
                        DataCell(Text('He will visit me tomorrow')),
                        DataCell(Text('He will not visit me tomorrow')),
                        DataCell(Text(
                            'Will he visit you tomorrow?. Yes, He will. No, He will not')),
                      ],
                    ),
                    DataRow(
                      cells: <DataCell>[
                        DataCell(Text('It will rain tonight')),
                        DataCell(Text('It will not rain tonight')),
                        DataCell(Text(
                            'Will it rain tomorrow?. Yes, It will. No, It will not')),
                      ],
                    ),
                  ],
                ),
                SizedBox(width: 25, height: 25),
                Container(
                  height: 80,
                  width: 400,
                  padding: EdgeInsets.all(5),
                  decoration: BoxDecoration(color: Colors.green[200]),
                  child: Text(
                    "Be going to => Kegiatan telah direncanakan",
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
                        DataCell(
                            Text('Subject + tobe 1 + going to + Verb 1 + O/M')),
                        DataCell(Text(
                            'Subject + tobe 1 + not + going to + Verb 1 + O/M')),
                        DataCell(Text(
                            ' Tobe 1 + Subject + going to + Verb 1 + O/M ?. Yes, S + Tobe 1. No, S + Tobe 1 + not')),
                      ],
                    ),
                    DataRow(
                      cells: <DataCell>[
                        DataCell(Text('I am going to fix this car soon')),
                        DataCell(Text('I am not going to fix this car soon')),
                        DataCell(Text(
                            'Are you going to fix this car soon? Yes, I am. No, I am not')),
                      ],
                    ),
                    DataRow(
                      cells: <DataCell>[
                        DataCell(Text('They are going to study math later')),
                        DataCell(
                            Text('They are not going to study math later')),
                        DataCell(Text(
                            'Are they going to study math later?. Yes, they are. No, they are not')),
                      ],
                    ),
                    DataRow(
                      cells: <DataCell>[
                        DataCell(Text('She is going to eat noodles tonight')),
                        DataCell(
                            Text('She is not going to eat noodles tonight')),
                        DataCell(Text(
                            'Is she going to eat noodles tonight?. Yes, She is. No, She is not')),
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
                          return FutureExc();
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
