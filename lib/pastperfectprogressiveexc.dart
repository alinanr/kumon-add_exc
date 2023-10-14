import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:kumon_addexc/summary.dart';

class PastPerfectProgressiveExc extends StatefulWidget {
  const PastPerfectProgressiveExc({ Key? key }) : super(key: key);

  @override
  State<PastPerfectProgressiveExc> createState() => _PastPerfectProgressiveExcState();
}

class _PastPerfectProgressiveExcState extends State<PastPerfectProgressiveExc> with TickerProviderStateMixin{

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
                          "https://i.pinimg.com/originals/1d/a7/92/1da79212219b76bb2e23b620a1be864d.gif"),
                      width: 30,
                      height: 25,
                      fit: BoxFit.cover,
                    ),
                    clipBehavior: Clip.hardEdge,
                  ),
                  SizedBox(width: 25, height: 20),
                  Text(
                    "She ..... the wall after arrived home",
                    textAlign: TextAlign.center,
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
                          child: Text("had been painting",
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
                                                          'Jawaban yang benar adalah had been working, karena kalimatnya adalah past perfect progressive ditandai dengan time signal after'));
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
                          child: Text("has been painting",
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
                                                          'Jawaban yang benar adalah had been working, karena kalimatnya adalah past perfect progressive ditandai dengan time signal after'));
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
                          child: Text("painted",
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
                child: Image(image: NetworkImage('https://c.tenor.com/XMOWBJkvpLEAAAAC/plant-planting.gif')
                  ,
                  width: 30,
                  height: 25,
                  fit: BoxFit.cover,
                ),
                clipBehavior: Clip.hardEdge,
              ),
              SizedBox(width: 25, height: 20),
              Text(
                "My mother ...... the tree for 2 days",
                textAlign: TextAlign.center,
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
                                                      'Jawaban yang benar adalah had been planting, karena kalimatnya adalah Past Perfect Tense yang ditandai dengan time signal for'));
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
                      child: Text("planted",
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
                                                      'Jawaban yang benar adalah had been planting, karena kalimatnya adalah Past Perfect Tense yang ditandai dengan time signal for'));
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
                      child: Text("is planting",
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
                      child: Text("had been planting",
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
                                "https://thumbs.gfycat.com/FocusedGraveIndigobunting-size_restricted.gif"),
                            width: 30,
                            height: 25,
                            fit: BoxFit.cover,
                          ),
                          clipBehavior: Clip.hardEdge,
                        ),
                        SizedBox(width: 25, height: 20),
                        Text(
                          "The monkey ....... that tree before",
                          textAlign: TextAlign.center,
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
                                                                'Jawaban yang benar adalah had been climbing, karena kalimatnya past perfect progressive yang ditandai dengan time signal before'));
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
                                child: Text("has been climbing",
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
                                child: Text("had been climbing",
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
                                                                'Jawaban yang benar adalah had been climbing, karena kalimatnya past perfect progressive yang ditandai dengan time signal before'));
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
                                child: Text("is climbing",
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
                                "https://c.tenor.com/1Yakw1DSylcAAAAC/cutting-tree.gif"),
                            width: 30,
                            height: 25,
                            fit: BoxFit.cover,
                          ),
                          clipBehavior: Clip.hardEdge,
                        ),
                        SizedBox(width: 25, height: 20),
                        Text(
                          "The man  ..... the tree when he was in the forest",
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
                                                                'Jawaban yang benar adalah had been cutting , karena kalimatnya adalah past perfect progressive yang ditandai dengan time signal when'));
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
                                                                'Jawaban yang benar adalah had been cutting , karena kalimatnya adalah past perfect progressive yang ditandai dengan time signal when'));
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
                                child: Text("has been cutting",
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
                                child: Text("had been cutting",
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
                                "https://c.tenor.com/c65rJ5VmUFYAAAAC/love-you-baby.gif"),
                            width: 30,
                            height: 25,
                            fit: BoxFit.cover,
                          ),
                          clipBehavior: Clip.hardEdge,
                        ),
                        SizedBox(width: 25, height: 20),
                        Text(
                          "The girl ....... after played with her friends",
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
                                                                'Jawaban yang benar adalah had been crying, karena kalimatnya adalah past perfect progressive yang ditandai dengan time signal after'));
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
                                child: Text("is crying",
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
                                child: Text("had been crying",
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
                                                                'Jawaban yang benar adalah had been crying, karena kalimatnya adalah past perfect progressive yang ditandai dengan time signal after'));
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
                                child: Text("has been crying",
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
