import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:kumon_addexc/summary.dart';

class PresentPerfectExc extends StatefulWidget {
  const PresentPerfectExc({ Key? key }) : super(key: key);

  @override
  State<PresentPerfectExc> createState() => _PresentPerfectExcState();
}

class _PresentPerfectExcState extends State<PresentPerfectExc> with TickerProviderStateMixin {
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
                          "https://mir-s3-cdn-cf.behance.net/project_modules/disp/39305540757277.578c758b80108.gif"),
                      width: 30,
                      height: 25,
                      fit: BoxFit.cover,
                    ),
                    clipBehavior: Clip.hardEdge,
                  ),
                  SizedBox(width: 25, height: 20),
                  Text(
                    "She ..... for 2 hours",
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
                          child: Text("has worked",
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
                                                          'Jawaban yang benar adalah has worked, karena subjectnya adalah She dan termasuk kalimat verbal present perfect tense'));
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
                          child: Text("been worked",
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
                                                          'Jawaban yang benar adalah has worked, karena subjectnya adalah She'));
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
                          child: Text("have worked",
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
                child: Image(image: NetworkImage('https://genhq.com/wp-content/uploads/2017/09/Gender-Equality.gif')
                  ,
                  width: 30,
                  height: 25,
                  fit: BoxFit.cover,
                ),
                clipBehavior: Clip.hardEdge,
              ),
              SizedBox(width: 25, height: 20),
              Text(
                "They ...... for 3 hours",
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
                                                      'Jawaban yang benar adalah have studied, karena subjectnya adalah They'));
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
                      child: Text("has studied",
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
                                                      'Jawaban yang benar adalah have studied, karena subjectnya adalah They dan termasuk kalimat verbal present perfect tense'));
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
                      child: Text("been studied",
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
                      child: Text("have studied",
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
                            image: NetworkImage(
                                "https://i.pinimg.com/originals/38/07/cd/3807cdf23c778c8789dbc7e723cae490.gif"),
                            width: 30,
                            height: 25,
                            fit: BoxFit.cover,
                          ),
                          clipBehavior: Clip.hardEdge,
                        ),
                        SizedBox(width: 25, height: 20),
                        Text(
                          "The plane ....... since 7 o'clock",
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
                                                                'Jawaban yang benar adalah has landed, karena subjectnya adalah The plane = It'));
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
                                child: Text("Have landed",
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
                                child: Text("has landed",
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
                                                                'Jawaban yang benar adalah has landed, karena subjectnya adalah The plane = It dan termasuk kalimat verbal present perfect'));
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
                                child: Text("been landed",
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
                            image: NetworkImage(
                                "https://cdn.dribbble.com/users/1242979/screenshots/7069075/media/87464b7ff5cc077f9c8f626456921d4a.gif"),
                            width: 30,
                            height: 25,
                            fit: BoxFit.cover,
                          ),
                          clipBehavior: Clip.hardEdge,
                        ),
                        SizedBox(width: 25, height: 20),
                        Text(
                          "He ..... at the beach since 8 a.m",
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
                                                                'Jawaban yang benar adalah has been , sesuai dengan rumus kalimat nya S + Have/Has + been + C'));
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
                                child: Text("been",
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
                                                                'Jawaban yang benar adalah has been, karena Subjectnya adalah he'));
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
                                child: Text("have been",
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
                                child: Text("has been",
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
                            image: NetworkImage(
                                "https://c.tenor.com/AGn-QDT9O8sAAAAM/food-cat.gif"),
                            width: 30,
                            height: 25,
                            fit: BoxFit.cover,
                          ),
                          clipBehavior: Clip.hardEdge,
                        ),
                        SizedBox(width: 25, height: 20),
                        Text(
                          "The cat ....... hungry for 2 hours",
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
                                                                'Jawaban yang benar adalah has been, karena subjectnya adalah The mouse = It'));
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
                                child: Text("have been",
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
                                child: Text("has been",
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
                                                                'Jawaban yang benar adalah has been, sesuai dengan rumus kalimat present perfect yaitu S + Have/Has + been + C'));
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
                                child: Text("been",
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
