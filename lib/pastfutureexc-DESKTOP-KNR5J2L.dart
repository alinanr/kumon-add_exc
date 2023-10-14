import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:kumon_addexc/summary.dart';

class PastFutureExc extends StatefulWidget {
  const PastFutureExc({ Key? key }) : super(key: key);

  @override
  State<PastFutureExc> createState() => _PastFutureExcState();
}

class _PastFutureExcState extends State<PastFutureExc> with TickerProviderStateMixin{
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
                          "images/rampok-pastfuture.gif"),
                      width: 30,
                      height: 25,
                      fit: BoxFit.cover,
                    ),
                    clipBehavior: Clip.hardEdge,
                  ),
                  SizedBox(width: 25, height: 20),
                  Text(
                    "The police ...... the thief the next day",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontFamily: "PatuaOne",
                      fontSize: 25,
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
                            fixedSize: Size(100, 70),
                            padding: EdgeInsets.all(5),
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
                          child: Text("would chase",
                          textAlign: TextAlign.center,
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
                            padding: EdgeInsets.all(5),
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
                                                          'Jawaban yang benar adalah would chase, karena kalimatnya adalah past future tense yang ditandai dengan time signal the next day'));
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
                          child: Text("will chase",
                          textAlign: TextAlign.center,
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
                            padding: EdgeInsets.all(5),
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
                                                          'Jawaban yang benar adalah would chase, karena kalimatnya adalah past future tense yang ditandai dengan time signal the next day'));
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
                          child: Text("chases",
                          textAlign: TextAlign.center,
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
  const Soal2({Key? key}) : super(key: key);

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
                child: Image(image: AssetImage('images/dinner-pastfuture.gif')
                  ,
                  width: 30,
                  height: 25,
                  fit: BoxFit.cover,
                ),
                clipBehavior: Clip.hardEdge,
              ),
              SizedBox(width: 25, height: 20),
              Text(
                "They ...... dinner together the day before",
                textAlign: TextAlign.center,
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
                        padding: EdgeInsets.all(5),
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
                                                      'Jawaban yang benar adalah would have, karena kalimatnya adalah past future tense yang ditandai dengan time signal yaitu the day before'));
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
                      child: Text("will have",
                      textAlign: TextAlign.center,
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
                        padding: EdgeInsets.all(5),
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
                                                      'Jawaban yang benar adalah would have, karena kalimatnya adalah past future tense yang ditandai dengan time signal the next day'));
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
                      child: Text("are having",
                      textAlign: TextAlign.center,
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
                        padding: EdgeInsets.all(5),
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
                      child: Text("would have",
                      textAlign: TextAlign.center,
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
  const Soal3({Key? key}) : super(key: key);

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
                            image: AssetImage(
                                "images/gubuk-pastfuture.gif"),
                            width: 30,
                            height: 25,
                            fit: BoxFit.cover,
                          ),
                          clipBehavior: Clip.hardEdge,
                        ),
                        SizedBox(width: 25, height: 20),
                        Text(
                          "He ...... the hut last week",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontFamily: "PatuaOne",
                            fontSize: 25,
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
                                  fixedSize: Size(100, 70),
                                  padding: EdgeInsets.all(5),
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
                                                                'Jawaban yang benar adalah would build, karena kalimatnya adalah past future tense yang ditandai dengan time signal last week'));
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
                                child: Text("will build",
                                textAlign: TextAlign.center,
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
                                  padding: EdgeInsets.all(5),
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
                                child: Text("would build",
                                textAlign: TextAlign.center,
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
                                  padding: EdgeInsets.all(5),
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
                                                                'Jawaban yang benar adalah would build, karena merupakan kalimat past future tense yang ditandai dengan time signal last week'));
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
                                child: Text("is building",
                                textAlign: TextAlign.center,
                                    style: TextStyle(
                                        fontFamily: "PatuaOne",
                                        fontSize: 18,
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
  const Soal4({Key? key}) : super(key: key);

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
                            image: AssetImage(
                                "images/kelas-pastfuture.gif"),
                            width: 30,
                            height: 25,
                            fit: BoxFit.cover,
                          ),
                          clipBehavior: Clip.hardEdge,
                        ),
                        SizedBox(width: 25, height: 20),
                        Text(
                          "We....... in the classroom the next day",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontFamily: "PatuaOne",
                            fontSize: 25,
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
                                  padding: EdgeInsets.all(5),
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
                                                                'Jawaban yang benar adalah would be, karena kalimatnya adalah past future tense yang ditandai dengan time signal the next day'));
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
                                child: Text("will be",
                                textAlign: TextAlign.center,
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
                                  padding: EdgeInsets.all(5),
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
                                                                'Jawaban yang benar adalah would be, karena merupakan kalimat pastfuture tense yang ditandai dengan time signal the next day'));
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
                                textAlign: TextAlign.center,
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
                                  padding: EdgeInsets.all(5),
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
                                child: Text("would be",
                                textAlign: TextAlign.center,
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
  const Soal5({Key? key}) : super(key: key);

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
                            image: AssetImage(
                                "images/cukur-pastfuture.gif"),
                            width: 30,
                            height: 25,
                            fit: BoxFit.cover,
                          ),
                          clipBehavior: Clip.hardEdge,
                        ),
                        SizedBox(width: 25, height: 20),
                        Text(
                          "Someone ....... her hair yesterday",
                          textAlign: TextAlign.center,
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
                                  fixedSize: Size(100, 70),
                                  padding: EdgeInsets.all(5),
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
                                                                'Jawaban yang benar adalah would cut, karena kalimatnya adalah past perfect tense yang ditandai dengan time signal yesterday'));
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
                                child: Text("cut",
                                textAlign: TextAlign.center,
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
                                  padding: EdgeInsets.all(5),
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
                                child: Text("would cut",
                                textAlign: TextAlign.center,
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
                                  padding: EdgeInsets.all(5),
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
                                                                'Jawaban yang benar adalah would cut, karena termasuk kalimat past future yang ditandai dengan time signal yesterday'));
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
                                child: Text("will cut",
                                textAlign: TextAlign.center,
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