import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:kumon_addexc/pastperfectexc.dart';

class PastPerfect extends StatefulWidget {
  

  @override
  State<PastPerfect> createState() => _PastPerfectState();
}

class _PastPerfectState extends State<PastPerfect> {
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
                        "Simple Past Perfect Tense",
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
                    "Simple Past Perfect Tense adalah tense yang digunakan untuk menceritakan kegiatan yang telah terjadi atau dilakukan di waktu lampau. Past Perfect Tense memiliki 2 jenis kalimat yaitu Nominal dan Verbal.",
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
                            "Before",
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
                            "Several times",
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
                        DataCell(Text('Subject + Had + been + C')),
                        DataCell(Text('Subject + Had + not + been + C')),
                        DataCell(Text(
                            ' Had + Subject + been + C ?. Yes, S + had. No, S + had + not')),
                      ],
                    ),
                    DataRow(
                      cells: <DataCell>[
                        DataCell(Text('He had been here since yesterday')),
                        DataCell(Text('He had been here since yesterday')),
                        DataCell(Text(
                            'Had he been here since yesterday? Yes, he has. No, he has not')),
                      ],
                    ),
                    DataRow(
                      cells: <DataCell>[
                        DataCell(
                            Text('They had been in Japan for a long time')),
                        DataCell(
                            Text('They had not been in Japan for a long time')),
                        DataCell(Text(
                            'Had they been in Japan for a long time?. Yes, they have. No, they have not')),
                      ],
                    ),
                    DataRow(
                      cells: <DataCell>[
                        DataCell(Text('It had been fat before')),
                        DataCell(Text('It had not been fat before')),
                        DataCell(Text(
                            'Had it been fat before?. Yes, It had. No, It had not')),
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
                        DataCell(Text('Subject + Had + V3 + O/M')),
                        DataCell(Text('Subject + Had + not + V3 + O/M')),
                        DataCell(Text(
                            'Had + Subject + V3 + O/M ?. Yes, S + had. No, S + had + not')),
                      ],
                    ),
                    DataRow(
                      cells: <DataCell>[
                        DataCell(Text('I had eaten lunch before')),
                        DataCell(Text('I had not eaten lunch before')),
                        DataCell(Text(
                            'Had you eaten lunch?. Yes, I had. No, I had not')),
                      ],
                    ),
                    DataRow(
                      cells: <DataCell>[
                        DataCell(
                            Text('She had gone to London for a long time')),
                        DataCell(
                            Text('She had not gone to London for a long time')),
                        DataCell(Text(
                            'Had she gone to London twice?. Yes, She had. No, He had not')),
                      ],
                    ),
                    DataRow(
                      cells: <DataCell>[
                        DataCell(Text('We had already written this poem ')),
                        DataCell(Text('We had not already written this poem ')),
                        DataCell(Text(
                            'Had you already written this poem ?. Yes, We had. No, We had not')),
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
                        DataCell(Text('Use')),
                        DataCell(Text('Used')),
                        DataCell(Text('Used')),
                        DataCell(Text('Menggunakan'))
                      ],
                    ),
                    DataRow(
                      cells: <DataCell>[
                        DataCell(Text('Understand')),
                        DataCell(Text('Understood')),
                        DataCell(Text('Understood')),
                        DataCell(Text('Mengerti'))
                      ],
                    ),
                    DataRow(
                      cells: <DataCell>[
                        DataCell(Text('Want')),
                        DataCell(Text('Wanted')),
                        DataCell(Text('Wanted')),
                        DataCell(Text('Ingin'))
                      ],
                    ),
                    DataRow(
                      cells: <DataCell>[
                        DataCell(Text('Find')),
                        DataCell(Text('Found')),
                        DataCell(Text('Found')),
                        DataCell(Text('Menemukan'))
                      ],
                    ),
                    DataRow(
                      cells: <DataCell>[
                        DataCell(Text('Admire')),
                        DataCell(Text('Admired')),
                        DataCell(Text('Admired')),
                        DataCell(Text('Mengagumi'))
                      ],
                    ),
                    DataRow(
                      cells: <DataCell>[
                        DataCell(Text('Allow')),
                        DataCell(Text('Allowed')),
                        DataCell(Text('Allowed')),
                        DataCell(Text('Mengizinkan'))
                      ],
                    ),
                    DataRow(
                      cells: <DataCell>[
                        DataCell(Text('Bring')),
                        DataCell(Text('Brought')),
                        DataCell(Text('Brought')),
                        DataCell(Text('Membawa'))
                      ],
                    ),
                    DataRow(
                      cells: <DataCell>[
                        DataCell(Text('Begin')),
                        DataCell(Text('Began')),
                        DataCell(Text('Begun')),
                        DataCell(Text('Memulai'))
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
                          return PastPerfectExc();
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
