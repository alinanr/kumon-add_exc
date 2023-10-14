import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:kumon_addexc/summary.dart';

class PresentProgressiveExc extends StatefulWidget {
  

  @override
  State<PresentProgressiveExc> createState() => _PresentProgressiveExcState();
}

class _PresentProgressiveExcState extends State<PresentProgressiveExc>
    with TickerProviderStateMixin {
  late final AnimationController _controller = AnimationController(
    duration: const Duration(seconds: 1),
    vsync: this,
  )..repeat(reverse: true);
  late final Animation<double> _animation = CurvedAnimation(
    parent: _controller,
    curve: Curves.fastOutSlowIn,
  );

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

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
                    tooltip:
                        MaterialLocalizations.of(context).openAppDrawerTooltip,
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
      body: Container(
        child: ListView(children: [
          Container(
            padding: EdgeInsets.fromLTRB(0, 100, 0, 50),
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    height: 250,
                    width: 300,
                    decoration: BoxDecoration(
                        // border: Border.all(color: Color(0xFFFFFFFF), width: 7),
                        borderRadius: BorderRadius.circular(15)),
                    padding: EdgeInsets.all(5),
                    child: Image(
                      image: NetworkImage(
                          "https://i.pinimg.com/originals/5d/8b/e6/5d8be68175bb83b6b415d0d65171f3ae.gif"),
                      width: 30,
                      height: 25,
                      fit: BoxFit.cover,
                    ),
                    clipBehavior: Clip.hardEdge,
                  ),
                  SizedBox(width: 25, height: 20),
                  Text(
                    "I ....... singing rigt now",
                    style: TextStyle(
                      fontFamily: "PatuaOne",
                      fontSize: 35,
                      fontWeight: FontWeight.w300,
                      color: Colors.black,
                    ),
                  ),
                  SizedBox(
                    width: 30,
                    height: 30,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            primary: Colors.pink[100],
                            onPrimary: Colors.white,
                            alignment: Alignment.center,
                            fixedSize: Size(90, 70),
                            padding: EdgeInsets.all(20),
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(15)),
                          ),
                          onPressed: () {
                            showDialog(
                                context: context,
                                barrierDismissible: false,
                                builder: (builder) {
                                  return AlertDialog(
                                      content: ScaleTransition(
                                        scale: _animation,
                                        child: Image.asset(
                                          "images/like.png",
                                          width: 100,
                                          height: 70,
                                        ),
                                      ),
                                      actions: [
                                        TextButton(
                                            onPressed: () {
                                              Navigator.pushAndRemoveUntil(
                                                context,
                                                MaterialPageRoute(
                                                    builder: (context) =>
                                                        Soal2()),
                                                (Route<dynamic> route) => false,
                                              );
                                            },
                                            child: Text("Next Question",
                                                style: TextStyle(
                                                    fontFamily: "PatuaOne",
                                                    fontSize: 15,
                                                    color: Colors.black)))
                                      ]);
                                });
                          },
                          child: Text("am",
                              style: TextStyle(
                                  fontFamily: "PatuaOne",
                                  fontSize: 20,
                                  fontWeight: FontWeight.w300,
                                  color: Colors.black))),
                      SizedBox(width: 20, height: 20),
                      ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            primary: Colors.pink[100],
                            onPrimary: Colors.white,
                            alignment: Alignment.center,
                            fixedSize: Size(90, 70),
                            padding: EdgeInsets.all(20),
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(15)),
                          ),
                          onPressed: () {
                            showDialog(
                                context: context,
                                barrierDismissible: false,
                                builder: (builder) {
                                  return AlertDialog(
                                    content: ScaleTransition(
                                      scale: _animation,
                                      child: Image.asset(
                                        "images/thumbs-down.png",
                                        width: 100,
                                        height: 70,
                                      ),
                                    ),
                                    actions: [
                                      TextButton(
                                          onPressed: () {
                                            Navigator.pushAndRemoveUntil(
                                              context,
                                              MaterialPageRoute(
                                                  builder: (context) =>
                                                      Soal2()),
                                              (Route<dynamic> route) => false,
                                            );
                                          },
                                          child: Text("Next Question",
                                              style: TextStyle(
                                                  fontFamily: "PatuaOne",
                                                  fontSize: 15,
                                                  color: Colors.black))),
                                      TextButton(
                                          onPressed: () {
                                            showDialog(
                                                context: context,
                                                builder: (builder) {
                                                  return AlertDialog(
                                                      content: Text(
                                                          'Jawaban yang benar adalah am, karena subjectnya adalah I'));
                                                });
                                          },
                                          child: Text("Check Answer",
                                              style: TextStyle(
                                                  fontFamily: "PatuaOne",
                                                  fontSize: 15,
                                                  color: Colors.black)))
                                    ],
                                  );
                                });
                          },
                          child: Text("is",
                              style: TextStyle(
                                  fontFamily: "PatuaOne",
                                  fontSize: 20,
                                  fontWeight: FontWeight.w300,
                                  color: Colors.black))),
                      SizedBox(width: 20, height: 20),
                      ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            primary: Colors.pink[100],
                            onPrimary: Colors.white,
                            alignment: Alignment.center,
                            fixedSize: Size(90, 70),
                            padding: EdgeInsets.all(20),
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(15)),
                          ),
                          onPressed: () {
                            showDialog(
                                context: context,
                                barrierDismissible: false,
                                builder: (builder) {
                                  return AlertDialog(
                                    content: ScaleTransition(
                                      scale: _animation,
                                      child: Image.asset(
                                        "images/thumbs-down.png",
                                        width: 100,
                                        height: 70,
                                      ),
                                    ),
                                    actions: [
                                      TextButton(
                                          onPressed: () {
                                            Navigator.pushAndRemoveUntil(
                                              context,
                                              MaterialPageRoute(
                                                  builder: (context) =>
                                                      Soal2()),
                                              (Route<dynamic> route) => false,
                                            );
                                          },
                                          child: Text("Next Question",
                                              style: TextStyle(
                                                  fontFamily: "PatuaOne",
                                                  fontSize: 15,
                                                  color: Colors.black))),
                                      TextButton(
                                          onPressed: () {
                                            showDialog(
                                                context: context,
                                                builder: (builder) {
                                                  return AlertDialog(
                                                      content: Text(
                                                          'Jawaban yang benar adalah am, karena subjectnya adalah I'));
                                                });
                                          },
                                          child: Text("Check Answer",
                                              style: TextStyle(
                                                  fontFamily: "PatuaOne",
                                                  fontSize: 15,
                                                  color: Colors.black)))
                                    ],
                                  );
                                });
                          },
                          child: Text("are",
                              style: TextStyle(
                                  fontFamily: "PatuaOne",
                                  fontSize: 20,
                                  fontWeight: FontWeight.w300,
                                  color: Colors.black))),
                      SizedBox(width: 20, height: 20),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ]),
      ),
    );
  }
}

class Soal2 extends StatefulWidget {
  

  @override
  _Soal2State createState() => _Soal2State();
}

class _Soal2State extends State<Soal2> with TickerProviderStateMixin {
  late final AnimationController _controller = AnimationController(
    duration: const Duration(seconds: 1),
    vsync: this,
  )..repeat(reverse: true);
  late final Animation<double> _animation = CurvedAnimation(
    parent: _controller,
    curve: Curves.fastOutSlowIn,
  );

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

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
        body: ListView(children: [
          Container(
            padding: EdgeInsets.fromLTRB(0, 50, 0, 30),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                height: 250,
                width: 300,
                decoration: BoxDecoration(
                    // border: Border.all(color: Color(0xFFFFFFFF), width: 7),
                    borderRadius: BorderRadius.circular(15)),
                padding: EdgeInsets.all(5),
                child: new Image.asset(
                  'images/walking.gif',
                  width: 30,
                  height: 25,
                  fit: BoxFit.cover,
                ),
                clipBehavior: Clip.hardEdge,
              ),
              SizedBox(width: 25, height: 20),
              Text(
                "They ...... walking together",
                style: TextStyle(
                  fontFamily: "PatuaOne",
                  fontSize: 30,
                  fontWeight: FontWeight.w200,
                  color: Colors.black,
                ),
              ),
              SizedBox(
                width: 30,
                height: 30,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        primary: Colors.pink[100],
                        onPrimary: Colors.white,
                        alignment: Alignment.center,
                        fixedSize: Size(90, 70),
                        padding: EdgeInsets.all(20),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(15)),
                      ),
                      onPressed: () {
                        showDialog(
                            context: context,
                            barrierDismissible: false,
                            builder: (builder) {
                              return AlertDialog(
                                content: ScaleTransition(
                                  scale: _animation,
                                  child: Image.asset(
                                    "images/thumbs-down.png",
                                    width: 100,
                                    height: 70,
                                  ),
                                ),
                                actions: [
                                  TextButton(
                                      onPressed: () {
                                        Navigator.pushAndRemoveUntil(
                                          context,
                                          MaterialPageRoute(
                                              builder: (context) => Soal3()),
                                          (Route<dynamic> route) => false,
                                        );
                                      },
                                      child: Text("Next Question",
                                          style: TextStyle(
                                              fontFamily: "PatuaOne",
                                              fontSize: 15,
                                              color: Colors.black))),
                                  TextButton(
                                      onPressed: () {
                                        showDialog(
                                            context: context,
                                            builder: (builder) {
                                              return AlertDialog(
                                                  content: Text(
                                                      'Jawaban yang benar adalah are, karena subjectnya adalah They'));
                                            });
                                      },
                                      child: Text("Check Answer",
                                          style: TextStyle(
                                              fontFamily: "PatuaOne",
                                              fontSize: 15,
                                              color: Colors.black)))
                                ],
                              );
                            });
                      },
                      child: Text("am",
                          style: TextStyle(
                              fontFamily: "PatuaOne",
                              fontSize: 20,
                              fontWeight: FontWeight.w300,
                              color: Colors.black))),
                  SizedBox(width: 20, height: 20),
                  ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        primary: Colors.pink[100],
                        onPrimary: Colors.white,
                        alignment: Alignment.center,
                        fixedSize: Size(90, 70),
                        padding: EdgeInsets.all(20),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(15)),
                      ),
                      onPressed: () {
                        showDialog(
                            context: context,
                            barrierDismissible: false,
                            builder: (builder) {
                              return AlertDialog(
                                content: ScaleTransition(
                                  scale: _animation,
                                  child: Image.asset(
                                    "images/thumbs-down.png",
                                    width: 100,
                                    height: 70,
                                  ),
                                ),
                                actions: [
                                  TextButton(
                                      onPressed: () {
                                        Navigator.pushAndRemoveUntil(
                                          context,
                                          MaterialPageRoute(
                                              builder: (context) => Soal3()),
                                          (Route<dynamic> route) => false,
                                        );
                                      },
                                      child: Text("Next Question",
                                          style: TextStyle(
                                              fontFamily: "PatuaOne",
                                              fontSize: 15,
                                              color: Colors.black))),
                                  TextButton(
                                      onPressed: () {
                                        showDialog(
                                            context: context,
                                            builder: (builder) {
                                              return AlertDialog(
                                                  content: Text(
                                                      'Jawaban yang benar adalah are, karena subjectnya adalah They'));
                                            });
                                      },
                                      child: Text("Check Answer",
                                          style: TextStyle(
                                              fontFamily: "PatuaOne",
                                              fontSize: 15,
                                              color: Colors.black)))
                                ],
                              );
                            });
                      },
                      child: Text("is",
                          style: TextStyle(
                              fontFamily: "PatuaOne",
                              fontSize: 20,
                              fontWeight: FontWeight.w300,
                              color: Colors.black))),
                  SizedBox(width: 20, height: 20),
                  ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        primary: Colors.pink[100],
                        onPrimary: Colors.white,
                        alignment: Alignment.center,
                        fixedSize: Size(90, 70),
                        padding: EdgeInsets.all(20),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(15)),
                      ),
                      onPressed: () {
                        showDialog(
                            context: context,
                            barrierDismissible: false,
                            builder: (builder) {
                              return AlertDialog(
                                content: ScaleTransition(
                                  scale: _animation,
                                  child: Image.asset(
                                    "images/like.png",
                                    width: 100,
                                    height: 70,
                                  ),
                                ),
                                actions: [
                                  TextButton(
                                      onPressed: () {
                                        Navigator.pushAndRemoveUntil(
                                          context,
                                          MaterialPageRoute(
                                              builder: (context) => Soal3()),
                                          (Route<dynamic> route) => false,
                                        );
                                      },
                                      child: Text("Next Question",
                                          style: TextStyle(
                                              fontFamily: "PatuaOne",
                                              fontSize: 15,
                                              color: Colors.black)))
                                ],
                              );
                            });
                      },
                      child: Text("are",
                          style: TextStyle(
                              fontFamily: "PatuaOne",
                              fontSize: 20,
                              fontWeight: FontWeight.w300,
                              color: Colors.black))),
                  SizedBox(width: 20, height: 20),
                ],
              ),
            ],
          ),
        ]));
  }
}

class Soal3 extends StatefulWidget {
 

  @override
  _Soal3State createState() => _Soal3State();
}

class _Soal3State extends State<Soal3> with TickerProviderStateMixin {
  late final AnimationController _controller = AnimationController(
    duration: const Duration(seconds: 1),
    vsync: this,
  )..repeat(reverse: true);
  late final Animation<double> _animation = CurvedAnimation(
    parent: _controller,
    curve: Curves.fastOutSlowIn,
  );

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

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
        body: ListView(children: [
          Container(
              child: Center(
                  child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                Container(
                  padding: EdgeInsets.fromLTRB(0, 100, 0, 50),
                  child: Center(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          height: 250,
                          width: 300,
                          decoration: BoxDecoration(
                              // border: Border.all(color: Color(0xFFFFFFFF), width: 7),
                              borderRadius: BorderRadius.circular(15)),
                          padding: EdgeInsets.all(5),
                          child: Image(
                            image: NetworkImage(
                                "https://i.pinimg.com/originals/24/bd/b9/24bdb963b911fc0e2768bffe888ab175.gif"),
                            width: 30,
                            height: 25,
                            fit: BoxFit.cover,
                          ),
                          clipBehavior: Clip.hardEdge,
                        ),
                        SizedBox(width: 25, height: 20),
                        Text(
                          "She .......cooking at present",
                          style: TextStyle(
                            fontFamily: "PatuaOne",
                            fontSize: 30,
                            fontWeight: FontWeight.w400,
                            color: Colors.black,
                          ),
                        ),
                        SizedBox(
                          width: 30,
                          height: 30,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                  primary: Colors.pink[100],
                                  onPrimary: Colors.white,
                                  alignment: Alignment.center,
                                  fixedSize: Size(90, 70),
                                  padding: EdgeInsets.all(20),
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(15)),
                                ),
                                onPressed: () {
                                  showDialog(
                                      context: context,
                                      barrierDismissible: false,
                                      builder: (builder) {
                                        return AlertDialog(
                                          content: ScaleTransition(
                                            scale: _animation,
                                            child: Image.asset(
                                              "images/thumbs-down.png",
                                              width: 100,
                                              height: 70,
                                            ),
                                          ),
                                          actions: [
                                            TextButton(
                                                onPressed: () {
                                                  Navigator.pushAndRemoveUntil(
                                                    context,
                                                    MaterialPageRoute(
                                                        builder: (context) =>
                                                            Soal4()),
                                                    (Route<dynamic> route) =>
                                                        false,
                                                  );
                                                },
                                                child: Text("Next Question",
                                                    style: TextStyle(
                                                        fontFamily: "PatuaOne",
                                                        fontSize: 15,
                                                        color: Colors.black))),
                                            TextButton(
                                                onPressed: () {
                                                  showDialog(
                                                      context: context,
                                                      builder: (builder) {
                                                        return AlertDialog(
                                                            content: Text(
                                                                'Jawaban yang benar adalah is, karena subjectnya adalah She'));
                                                      });
                                                },
                                                child: Text("Check Answer",
                                                    style: TextStyle(
                                                        fontFamily: "PatuaOne",
                                                        fontSize: 15,
                                                        color: Colors.black)))
                                          ],
                                        );
                                      });
                                },
                                child: Text("am",
                                    style: TextStyle(
                                        fontFamily: "PatuaOne",
                                        fontSize: 20,
                                        fontWeight: FontWeight.w300,
                                        color: Colors.black))),
                            SizedBox(width: 20, height: 20),
                            ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                  primary: Colors.pink[100],
                                  onPrimary: Colors.white,
                                  alignment: Alignment.center,
                                  fixedSize: Size(90, 70),
                                  padding: EdgeInsets.all(20),
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(15)),
                                ),
                                onPressed: () {
                                  showDialog(
                                      context: context,
                                      barrierDismissible: false,
                                      builder: (builder) {
                                        return AlertDialog(
                                          content: ScaleTransition(
                                            scale: _animation,
                                            child: Image.asset(
                                              "images/like.png",
                                              width: 100,
                                              height: 70,
                                            ),
                                          ),
                                          actions: [
                                            TextButton(
                                                onPressed: () {
                                                  Navigator.pushAndRemoveUntil(
                                                    context,
                                                    MaterialPageRoute(
                                                        builder: (context) =>
                                                            Soal4()),
                                                    (Route<dynamic> route) =>
                                                        false,
                                                  );
                                                },
                                                child: Text("Next Question",
                                                    style: TextStyle(
                                                        fontFamily: "PatuaOne",
                                                        fontSize: 15,
                                                        color: Colors.black)))
                                          ],
                                        );
                                      });
                                },
                                child: Text("is",
                                    style: TextStyle(
                                        fontFamily: "PatuaOne",
                                        fontSize: 20,
                                        fontWeight: FontWeight.w300,
                                        color: Colors.black))),
                            SizedBox(width: 20, height: 20),
                            ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                  primary: Colors.pink[100],
                                  onPrimary: Colors.white,
                                  alignment: Alignment.center,
                                  fixedSize: Size(90, 70),
                                  padding: EdgeInsets.all(20),
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(15)),
                                ),
                                onPressed: () {
                                  showDialog(
                                      context: context,
                                      barrierDismissible: false,
                                      builder: (builder) {
                                        return AlertDialog(
                                          content: ScaleTransition(
                                            scale: _animation,
                                            child: Image.asset(
                                              "images/thumbs-down.png",
                                              width: 100,
                                              height: 70,
                                            ),
                                          ),
                                          actions: [
                                            TextButton(
                                                onPressed: () {
                                                  Navigator.pushAndRemoveUntil(
                                                    context,
                                                    MaterialPageRoute(
                                                        builder: (context) =>
                                                            Soal4()),
                                                    (Route<dynamic> route) =>
                                                        false,
                                                  );
                                                },
                                                child: Text("Next Question",
                                                    style: TextStyle(
                                                        fontFamily: "PatuaOne",
                                                        fontSize: 15,
                                                        color: Colors.black))),
                                            TextButton(
                                                onPressed: () {
                                                  showDialog(
                                                      context: context,
                                                      builder: (builder) {
                                                        return AlertDialog(
                                                            content: Text(
                                                                'Jawaban yang benar adalah is, karena subjectnya adalah She'));
                                                      });
                                                },
                                                child: Text("Check Answer",
                                                    style: TextStyle(
                                                        fontFamily: "PatuaOne",
                                                        fontSize: 15,
                                                        color: Colors.black)))
                                          ],
                                        );
                                      });
                                },
                                child: Text("are",
                                    style: TextStyle(
                                        fontFamily: "PatuaOne",
                                        fontSize: 20,
                                        fontWeight: FontWeight.w300,
                                        color: Colors.black))),
                            SizedBox(width: 20, height: 20),
                          ],
                        ),
                        SizedBox(
                          width: 30,
                          height: 30,
                        ),
                      ],
                    ),
                  ),
                ),
              ]))),
        ]));
  }
}

class Soal4 extends StatefulWidget {
 

  @override
  _Soal4State createState() => _Soal4State();
}

class _Soal4State extends State<Soal4> with TickerProviderStateMixin {
  late final AnimationController _controller = AnimationController(
    duration: const Duration(seconds: 1),
    vsync: this,
  )..repeat(reverse: true);
  late final Animation<double> _animation = CurvedAnimation(
    parent: _controller,
    curve: Curves.fastOutSlowIn,
  );

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

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
        body: ListView(children: [
          Container(
              child: Center(
                  child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                Container(
                  padding: EdgeInsets.fromLTRB(0, 100, 0, 50),
                  child: Center(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          height: 250,
                          width: 300,
                          decoration: BoxDecoration(
                              // border: Border.all(color: Color(0xFFFFFFFF), width: 7),
                              borderRadius: BorderRadius.circular(15)),
                          padding: EdgeInsets.all(5),
                          child: Image(
                            image: NetworkImage(
                                "https://static.wixstatic.com/media/9fdcb4_5eac8bb291dd4fbaaec8780df9f022aa~mv2.gif"),
                            width: 30,
                            height: 25,
                            fit: BoxFit.cover,
                          ),
                          clipBehavior: Clip.hardEdge,
                        ),
                        SizedBox(width: 25, height: 20),
                        Text(
                          "We ....... swimming now",
                          style: TextStyle(
                            fontFamily: "PatuaOne",
                            fontSize: 35,
                            fontWeight: FontWeight.w200,
                            color: Colors.black,
                          ),
                        ),
                        SizedBox(
                          width: 30,
                          height: 30,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                  primary: Colors.pink[100],
                                  onPrimary: Colors.white,
                                  alignment: Alignment.center,
                                  fixedSize: Size(90, 70),
                                  padding: EdgeInsets.all(20),
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(15)),
                                ),
                                onPressed: () {
                                  showDialog(
                                      context: context,
                                      barrierDismissible: false,
                                      builder: (builder) {
                                        return AlertDialog(
                                          content: ScaleTransition(
                                            scale: _animation,
                                            child: Image.asset(
                                              "images/thumbs-down.png",
                                              width: 100,
                                              height: 70,
                                            ),
                                          ),
                                          actions: [
                                            TextButton(
                                                onPressed: () {
                                                  Navigator.pushAndRemoveUntil(
                                                    context,
                                                    MaterialPageRoute(
                                                        builder: (context) =>
                                                            Soal5()),
                                                    (Route<dynamic> route) =>
                                                        false,
                                                  );
                                                },
                                                child: Text("Next Question",
                                                    style: TextStyle(
                                                        fontFamily: "PatuaOne",
                                                        fontSize: 15,
                                                        color: Colors.black))),
                                            TextButton(
                                                onPressed: () {
                                                  showDialog(
                                                      context: context,
                                                      builder: (builder) {
                                                        return AlertDialog(
                                                            content: Text(
                                                                'Jawaban yang benar adalah are, karena subjectnya adalah we'));
                                                      });
                                                },
                                                child: Text("Check Answer",
                                                    style: TextStyle(
                                                        fontFamily: "PatuaOne",
                                                        fontSize: 15,
                                                        color: Colors.black)))
                                          ],
                                        );
                                      });
                                },
                                child: Text("am",
                                    style: TextStyle(
                                        fontFamily: "PatuaOne",
                                        fontSize: 20,
                                        fontWeight: FontWeight.w300,
                                        color: Colors.black))),
                            SizedBox(width: 20, height: 20),
                            ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                  primary: Colors.pink[100],
                                  onPrimary: Colors.white,
                                  alignment: Alignment.center,
                                  fixedSize: Size(90, 70),
                                  padding: EdgeInsets.all(20),
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(15)),
                                ),
                                onPressed: () {
                                  showDialog(
                                      context: context,
                                      barrierDismissible: false,
                                      builder: (builder) {
                                        return AlertDialog(
                                          content: ScaleTransition(
                                            scale: _animation,
                                            child: Image.asset(
                                              "images/thumbs-down.png",
                                              width: 100,
                                              height: 70,
                                            ),
                                          ),
                                          actions: [
                                            TextButton(
                                                onPressed: () {
                                                  Navigator.pushAndRemoveUntil(
                                                    context,
                                                    MaterialPageRoute(
                                                        builder: (context) =>
                                                            Soal5()),
                                                    (Route<dynamic> route) =>
                                                        false,
                                                  );
                                                },
                                                child: Text("Next Question",
                                                    style: TextStyle(
                                                        fontFamily: "PatuaOne",
                                                        fontSize: 15,
                                                        color: Colors.black))),
                                            TextButton(
                                                onPressed: () {
                                                  showDialog(
                                                      context: context,
                                                      builder: (builder) {
                                                        return AlertDialog(
                                                            content: Text(
                                                                'Jawaban yang benar adalah are, karena subjectnya adalah we'));
                                                      });
                                                },
                                                child: Text("Check Answer",
                                                    style: TextStyle(
                                                        fontFamily: "PatuaOne",
                                                        fontSize: 15,
                                                        color: Colors.black)))
                                          ],
                                        );
                                      });
                                },
                                child: Text("is",
                                    style: TextStyle(
                                        fontFamily: "PatuaOne",
                                        fontSize: 20,
                                        fontWeight: FontWeight.w300,
                                        color: Colors.black))),
                            SizedBox(width: 20, height: 20),
                            ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                  primary: Colors.pink[100],
                                  onPrimary: Colors.white,
                                  alignment: Alignment.center,
                                  fixedSize: Size(90, 70),
                                  padding: EdgeInsets.all(20),
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(15)),
                                ),
                                onPressed: () {
                                  showDialog(
                                      context: context,
                                      barrierDismissible: false,
                                      builder: (builder) {
                                        return AlertDialog(
                                          content: ScaleTransition(
                                            scale: _animation,
                                            child: Image.asset(
                                              "images/like.png",
                                              width: 100,
                                              height: 70,
                                            ),
                                          ),
                                          actions: [
                                            TextButton(
                                                onPressed: () {
                                                  Navigator.pushAndRemoveUntil(
                                                    context,
                                                    MaterialPageRoute(
                                                        builder: (context) =>
                                                            Soal5()),
                                                    (Route<dynamic> route) =>
                                                        false,
                                                  );
                                                },
                                                child: Text("Next Question",
                                                    style: TextStyle(
                                                        fontFamily: "PatuaOne",
                                                        fontSize: 15,
                                                        color: Colors.black)))
                                          ],
                                        );
                                      });
                                },
                                child: Text("are",
                                    style: TextStyle(
                                        fontFamily: "PatuaOne",
                                        fontSize: 20,
                                        fontWeight: FontWeight.w300,
                                        color: Colors.black))),
                            SizedBox(width: 20, height: 20),
                          ],
                        ),
                        SizedBox(
                          width: 30,
                          height: 30,
                        ),
                      ],
                    ),
                  ),
                ),
              ]))),
        ]));
  }
}

class Soal5 extends StatefulWidget {
 

  @override
  _Soal5State createState() => _Soal5State();
}

class _Soal5State extends State<Soal5> with TickerProviderStateMixin {
  late final AnimationController _controller = AnimationController(
    duration: const Duration(seconds: 1),
    vsync: this,
  )..repeat(reverse: true);
  late final Animation<double> _animation = CurvedAnimation(
    parent: _controller,
    curve: Curves.fastOutSlowIn,
  );

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

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
        body: ListView(children: [
          Container(
              child: Center(
                  child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                Container(
                  padding: EdgeInsets.fromLTRB(0, 100, 0, 50),
                  child: Center(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          height: 250,
                          width: 300,
                          decoration: BoxDecoration(
                              // border: Border.all(color: Color(0xFFFFFFFF), width: 7),
                              borderRadius: BorderRadius.circular(15)),
                          padding: EdgeInsets.all(5),
                          child: Image(
                            image: NetworkImage(
                                "https://c.tenor.com/sdLFSNO1vO4AAAAC/mouse-mousehunt.gif"),
                            width: 30,
                            height: 25,
                            fit: BoxFit.cover,
                          ),
                          clipBehavior: Clip.hardEdge,
                        ),
                        SizedBox(width: 25, height: 20),
                        Text(
                          "The mouse ....... eating the cheese now",
                          style: TextStyle(
                            fontFamily: "PatuaOne",
                            fontSize: 20,
                            fontWeight: FontWeight.w200,
                            color: Colors.black,
                          ),
                        ),
                        SizedBox(
                          width: 30,
                          height: 30,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                  primary: Colors.pink[100],
                                  onPrimary: Colors.white,
                                  alignment: Alignment.center,
                                  fixedSize: Size(100, 70),
                                  padding: EdgeInsets.all(20),
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(15)),
                                ),
                                onPressed: () {
                                  showDialog(
                                      context: context,
                                      builder: (builder) {
                                        return AlertDialog(
                                          content: ScaleTransition(
                                            scale: _animation,
                                            child: Image.asset(
                                              "images/thumbs-down.png",
                                              width: 100,
                                              height: 70,
                                            ),
                                          ),
                                          actions: [
                                            TextButton(
                                                onPressed: () {
                                                  Navigator.pushAndRemoveUntil(
                                                    context,
                                                    MaterialPageRoute(
                                                        builder: (context) =>
                                                            Summary()),
                                                    (Route<dynamic> route) =>
                                                        false,
                                                  );
                                                },
                                                child: Text("Finish",
                                                    style: TextStyle(
                                                        fontFamily: "PatuaOne",
                                                        fontSize: 15,
                                                        color: Colors.black))),
                                            TextButton(
                                                onPressed: () {
                                                  showDialog(
                                                      context: context,
                                                      builder: (builder) {
                                                        return AlertDialog(
                                                            content: Text(
                                                                'Jawaban yang benar adalah is, karena subjectnya adalah The mouse = It'));
                                                      });
                                                },
                                                child: Text("Check Answer",
                                                    style: TextStyle(
                                                        fontFamily: "PatuaOne",
                                                        fontSize: 15,
                                                        color: Colors.black)))
                                          ],
                                        );
                                      });
                                },
                                child: Text("am",
                                    style: TextStyle(
                                        fontFamily: "PatuaOne",
                                        fontSize: 20,
                                        fontWeight: FontWeight.w300,
                                        color: Colors.black))),
                            SizedBox(width: 20, height: 20),
                            ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                  primary: Colors.pink[100],
                                  onPrimary: Colors.white,
                                  alignment: Alignment.center,
                                  fixedSize: Size(100, 70),
                                  padding: EdgeInsets.all(20),
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(15)),
                                ),
                                onPressed: () {
                                  showDialog(
                                      context: context,
                                      barrierDismissible: false,
                                      builder: (builder) {
                                        return AlertDialog(
                                          content: ScaleTransition(
                                            scale: _animation,
                                            child: Image.asset(
                                              "images/like.png",
                                              width: 100,
                                              height: 70,
                                            ),
                                          ),
                                          actions: [
                                            TextButton(
                                                onPressed: () {
                                                  Navigator.pushAndRemoveUntil(
                                                    context,
                                                    MaterialPageRoute(
                                                        builder: (context) =>
                                                            Summary()),
                                                    (Route<dynamic> route) =>
                                                        false,
                                                  );
                                                },
                                                child: Text("Finish",
                                                    style: TextStyle(
                                                        fontFamily: "PatuaOne",
                                                        fontSize: 15,
                                                        color: Colors.black)))
                                          ],
                                        );
                                      });
                                },
                                child: Text("is",
                                    style: TextStyle(
                                        fontFamily: "PatuaOne",
                                        fontSize: 20,
                                        fontWeight: FontWeight.w300,
                                        color: Colors.black))),
                            SizedBox(width: 20, height: 20),
                            ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                  primary: Colors.pink[100],
                                  onPrimary: Colors.white,
                                  alignment: Alignment.center,
                                  fixedSize: Size(100, 70),
                                  padding: EdgeInsets.all(20),
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(15)),
                                ),
                                onPressed: () {
                                  showDialog(
                                      context: context,
                                      builder: (builder) {
                                        return AlertDialog(
                                          content: ScaleTransition(
                                            scale: _animation,
                                            child: Image.asset(
                                              "images/thumbs-down.png",
                                              width: 100,
                                              height: 70,
                                            ),
                                          ),
                                          actions: [
                                            TextButton(
                                                onPressed: () {
                                                  Navigator.pushAndRemoveUntil(
                                                    context,
                                                    MaterialPageRoute(
                                                        builder: (context) =>
                                                            Summary()),
                                                    (Route<dynamic> route) =>
                                                        false,
                                                  );
                                                },
                                                child: Text("Finish",
                                                    style: TextStyle(
                                                        fontFamily: "PatuaOne",
                                                        fontSize: 15,
                                                        color: Colors.black))),
                                            TextButton(
                                                onPressed: () {
                                                  showDialog(
                                                      context: context,
                                                      builder: (builder) {
                                                        return AlertDialog(
                                                            content: Text(
                                                                'Jawaban yang benar adalah is, karena subjectnya adalah The mouse = It'));
                                                      });
                                                },
                                                child: Text("Check Answer",
                                                    style: TextStyle(
                                                        fontFamily: "PatuaOne",
                                                        fontSize: 15,
                                                        color: Colors.black)))
                                          ],
                                        );
                                      });
                                },
                                child: Text("are",
                                    style: TextStyle(
                                        fontFamily: "PatuaOne",
                                        fontSize: 20,
                                        fontWeight: FontWeight.w300,
                                        color: Colors.black))),
                            SizedBox(width: 20, height: 20),
                          ],
                        ),
                      ],
                    ),
                  ),
                )
              ])))
        ]));
  }
}
