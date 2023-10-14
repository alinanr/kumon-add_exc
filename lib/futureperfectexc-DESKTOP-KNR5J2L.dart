import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:kumon_addexc/summary.dart';
import 'gantiprofil.dart';

class FuturePerfectExc extends StatefulWidget {
  @override
  State<FuturePerfectExc> createState() => _FuturePerfectExcState();
}

class _FuturePerfectExcState extends State<FuturePerfectExc>
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
    final Storage storage = Storage();
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
                          "images/basket-futureperfect.gif"),
                      width: 30,
                      height: 25,
                      fit: BoxFit.cover,
                    ),
                    clipBehavior: Clip.hardEdge,
                  ),
                  SizedBox(width: 25, height: 20),
                  Text(
                    "I ....... basketball by the time he calls me",
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
                          child: Text("will have played",
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
                                                          'Jawaban yang benar adalah will have played , karena kalimatnya adalah future perfect tense yang ditandai dengan time signal by the time'));
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
                          child: Text("are playing",
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
                                                          'Jawaban yang benar adalah will have played, karena kalimatnya adalah future perfect tense yang ditandai dengan time signal by the time'));
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
                          child: Text("play",
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
                child: Image(
                  image: NetworkImage(
                      'images/nikah-futureperfect.gif'),
                  width: 30,
                  height: 25,
                  fit: BoxFit.cover,
                ),
                clipBehavior: Clip.hardEdge,
              ),
              SizedBox(width: 25, height: 20),
              Text(
                "They ...... married for 20 years next year",
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
                                                      'Jawaban yang benar adalah will have been, karena kalimatnya adalah future perfect tense yang ditandai dengan time signal yaitu next year'));
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
                                                      'Jawaban yang benar adalah will have been, karena jawaban tidak nyambung dengan kalimat'));
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
                      child: Text("will get",
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
                      child: Text("will have been",
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
                                "images/nyuci-futureperfect.gif"),
                            width: 30,
                            height: 25,
                            fit: BoxFit.cover,
                          ),
                          clipBehavior: Clip.hardEdge,
                        ),
                        SizedBox(width: 25, height: 20),
                        Text(
                          "She ...... the clothes by 5 a.m",
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
                                                                'Jawaban yang benar adalah will have finished, karena kalimatnya adalah future perfect tense yang ditandai dengan time signal by 5 a.m'));
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
                                child: Text("will finish",
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
                                child: Text("will have washed",
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
                                                                'Jawaban yang benar adalah will have finished, karena merupakan kalimat future perfect tense yang ditandai dengan time signal by 5 a.m'));
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
                                child: Text("finishes",
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
                            image: NetworkImage(
                                "images/ngajar-futureperfect.gif"),
                            width: 30,
                            height: 25,
                            fit: BoxFit.cover,
                          ),
                          clipBehavior: Clip.hardEdge,
                        ),
                        SizedBox(width: 25, height: 20),
                        Text(
                          "My father....... math by next month",
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
                                                                'Jawaban yang benar adalah will have taught, karena kalimatnya adalah future perfect tense yang ditandai dengan time signal by next month'));
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
                                child: Text("teaches",
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
                                                                'Jawaban yang benar adalah will have taught, karena kalimatnya adalah future perfect tense yang ditandai dengan time signal by next month'));
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
                                child: Text("will teach",
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
                                child: Text("will have taught",
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
                                "images/anakrumah-futureperfect.gif"),
                            width: 30,
                            height: 25,
                            fit: BoxFit.cover,
                          ),
                          clipBehavior: Clip.hardEdge,
                        ),
                        SizedBox(width: 25, height: 20),
                        Text(
                          "The children ....... at home by the time I leave home",
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
                                                                'Jawaban yang benar adalah will have been, karena kalimatnya adalah future perfect tense yang ditandai dengan time signal by the time'));
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
                                child: Text("will have been",
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
                                                                'Jawaban yang benar adalah will have been, karena kalimatnya adalah future perfect tense yang ditandai dengan time signal by the time'));
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
