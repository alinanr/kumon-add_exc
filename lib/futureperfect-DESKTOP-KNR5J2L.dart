import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:kumon_addexc/futureperfectexc.dart';
import 'gantiprofil.dart';

class FuturePerfect extends StatefulWidget {
  @override
  State<FuturePerfect> createState() => _FuturePerfectState();
}

class _FuturePerfectState extends State<FuturePerfect> {
  final Storage storage = Storage();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: PreferredSize(
            child: AppBar(
                leading: FutureBuilder(
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
                    "Simple Past Future Tense adalah tense yang digunakan untuk menggambarkan kegiatan yang sudah terjadi dan akan selesai di waktu mendatang. Simple Future Perfect Tense memiliki dua jenis kalimat yaitu kalimat nominal dan verbal.",
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
                        "Berikut adalah time signals atau keterangan waktu sebagai tanda bahwa kalimat tersebut adalah kalimat Future Perfect Tense:",
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
                            "Next (week, month, year)",
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
                            "By the time",
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
                            "By ((next week, sunday, month), tomorrow)",
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
                            "Until",
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
                            "After",
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
                        DataCell(Text('Subject + will + have + been + C')),
                        DataCell(
                            Text('Subject + will + not + have + been + C')),
                        DataCell(Text(
                            ' Will + Subject + have + been + C ?. Yes, S + will. No, S + will + not')),
                      ],
                    ),
                    DataRow(
                      cells: <DataCell>[
                        DataCell(Text('I will have been 40 years next year')),
                        DataCell(
                            Text('I will not have been 40 years next year')),
                        DataCell(Text(
                            'Will you have been 40 years next year?. Yes, I will. No, I will not')),
                      ],
                    ),
                    DataRow(
                      cells: <DataCell>[
                        DataCell(Text('We will have been here by tomorrow')),
                        DataCell(
                            Text('We will not have been here by tomorrow')),
                        DataCell(Text(
                            'Will you have been here by tomorrow?. Yes, they will. No, they will not')),
                      ],
                    ),
                    DataRow(
                      cells: <DataCell>[
                        DataCell(Text(
                            'He will have been ready by the time I come here')),
                        DataCell(Text(
                            'He will not have been ready by the time I come here')),
                        DataCell(Text(
                            'Will he have been ready by the time I come here ?. Yes, He will. No, She will not')),
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
                        DataCell(Text('Subject + Will + Have + Verb 3 + O/M')),
                        DataCell(
                            Text('Subject + Will + not + Have + Verb 1 + O/M')),
                        DataCell(Text(
                            ' Will + Subject + Have + Verb 3 + O/M ?. Yes, S + will. No, S + will + not')),
                      ],
                    ),
                    DataRow(
                      cells: <DataCell>[
                        DataCell(Text('We will have arrived here by 7 p.m')),
                        DataCell(
                            Text('We will not have arrived here by 7 p.m ')),
                        DataCell(Text(
                            'Will you have arrived here by 7 p.m?. Yes, We will. No, We will not')),
                      ],
                    ),
                    DataRow(
                      cells: <DataCell>[
                        DataCell(Text(
                            'She will have finished her study next month')),
                        DataCell(Text(
                            'She will not have finished her study next month')),
                        DataCell(Text(
                            'Will she have finished her study next month?. Yes, She will. No, She will not')),
                      ],
                    ),
                    DataRow(
                      cells: <DataCell>[
                        DataCell(Text(
                            'I will have eaten your cake before you come here')),
                        DataCell(Text(
                            'I will not have eaten your cake before you come here')),
                        DataCell(Text(
                            'Will you have eaten your cake before you come here?. Yes, I will. No, I will not')),
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
                          return FuturePerfectExc();
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
