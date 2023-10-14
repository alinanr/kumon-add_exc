import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:kumon_addexc/presenttenseexc.dart';

class SimplePresent extends StatefulWidget {
  

  @override
  State<SimplePresent> createState() => _SimplePresentState();
}

class _SimplePresentState extends State<SimplePresent> {
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
                        "Simple Present Tense",
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
                    "Simple Present Tense adalah tense yang digunakan untuk menceritakan kegiatan sehari-hari atau secara rutin. Simple Present Tense memiliki dua jenis kalimat yaitu Nominal dan Verbal.",
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
                    textAlign: TextAlign.justify)
                ),
                
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
                            "Today",
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
                            "Every(day, week, month, year)",
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
                            "In the(morning, afternoon, evening)",
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
                            "At (noon, night)",
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
                            "Always",
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
                            "Usually",
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
                            "Sometimes",
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
                            "Seldom/rarely",
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
                            "Ever, Never",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontSize: 20,
                              fontFamily: "Roboto",
                              color: Colors.black,
                            ),
                          ))
                    ])
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
                        DataCell(Text('Subject + Tobe 1 + C')),
                        DataCell(Text('Subject + Tobe 1 + not +  C')),
                        DataCell(Text(
                            ' Tobe 1 + Subject + C ?. Yes, S + tobe 1. No, S + tobe 1+ not')),
                      ],
                    ),
                    DataRow(
                      cells: <DataCell>[
                        DataCell(Text('I am a nurse')),
                        DataCell(Text('I am not a nurse')),
                        DataCell(Text(
                            'Are you a nurse? Yes, I am. No, I am not')),
                      ],
                    ),
                    DataRow(
                      cells: <DataCell>[
                        DataCell(Text('They are in the yard in the morning')),
                        DataCell(Text('They are not in the yard in the morning')),
                        DataCell(Text(
                            'Are they in the yard in the morning?. Yes, they are. No, they are not')),
                      ],
                    ),
                    DataRow(
                      cells: <DataCell>[
                        DataCell(Text('The dog is fat')),
                        DataCell(Text('The dog is not fat')),
                        DataCell(Text(
                            'Is the dog fat?. Yes, It is. No, It is not')),
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
                            'Tobe 1',
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
                                child: Text("am",
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
                                child: Text("is",
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
                                child: Text("is",
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
                                child: Text("is",
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
                                child: Text("are",
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
                                child: Text("are",
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
                                child: Text("are",
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
                    height: 140,
                    width: 300,
                    padding: EdgeInsets.all(10),
                    decoration: BoxDecoration(
                        color: Colors.pink[100],
                        border: Border.all(color: Color(0xFFFFECB3), width: 5),
                        borderRadius: BorderRadius.circular(5)),
                    child: Text(
                      "Susunan kalimat verbal Present Tense adalah Subject + Verb 1(s/non-s) + Object/Modifier",
                      style: TextStyle(
                          fontFamily: "Roboto",
                          fontSize: 20,
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
                  dataRowHeight: 65,
                  headingTextStyle: TextStyle(
                      fontFamily: "LilitaOne",
                      fontSize: 15,
                      color: Colors.black),
                  columns: const <DataColumn>[
                    DataColumn(
                      label: Text(
                        '-s',
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
                        '-es',
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
                        '-ies',
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
                        DataCell(Text('play => plays')),
                        DataCell(Text('bermain')),
                        DataCell(Text('watch => watches')),
                        DataCell(Text('menonton')),
                        DataCell(Text('fly => flies')),
                        DataCell(Text('terbang'))
                      ],
                    ),
                    DataRow(
                      cells: <DataCell>[
                        DataCell(Text('run => runs')),
                        DataCell(Text('berlari')),
                        DataCell(Text('kiss => kisses')),
                        DataCell(Text('mencium')),
                        DataCell(Text('try => tries')),
                        DataCell(Text('mencoba'))
                      ],
                    ),
                    DataRow(
                      cells: <DataCell>[
                        DataCell(Text('want => wants')),
                        DataCell(Text('ingin')),
                        DataCell(Text('fix => fixes')),
                        DataCell(Text('memperbaiki')),
                        DataCell(Text('study => studies')),
                        DataCell(Text('Belajar'))
                      ],
                    ),
                    DataRow(
                      cells: <DataCell>[
                        DataCell(Text('drink => drinks')),
                        DataCell(Text('minum')),
                        DataCell(Text('wash => washes')),
                        DataCell(Text('mencuci')),
                        DataCell(Text('identify => identifies')),
                        DataCell(Text('mengidentifikasi'))
                      ],
                    ),
                    
                  ],
                ),
                SizedBox(width: 25, height: 25),
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
                              return PresentTenseExc();
                            }));
                    }, icon: Icon(Icons.arrow_forward_ios_sharp
                ))]),
                SizedBox(width: 25, height: 25),
              ])
            ],
          ),
        ));
  }
}
