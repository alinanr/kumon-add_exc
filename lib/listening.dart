import 'dart:async';
import 'dart:ui' as prefix;

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:audioplayers/audioplayers.dart';
import 'package:kumon_addexc/home.dart';
import 'package:kumon_addexc/summary.dart';

class Listening extends StatefulWidget {
  @override
  State<Listening> createState() => _ListeningState();
}

class _ListeningState extends State<Listening> with TickerProviderStateMixin {
  AudioPlayer audioPlayer = new AudioPlayer();

  Duration duration = new Duration();
  Duration position = new Duration();

  bool playing = false;

  bool pil1 = false;
  bool pil2 = false;
  bool pil3 = false;

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
        body: Center(
            child: ListView(children: [
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
                    "Listening Part",
                    style: TextStyle(
                        fontFamily: "LilitaOne",
                        fontSize: 45,
                        color: Colors.black),
                    textAlign: TextAlign.center,
                  ),
                  SizedBox(height: 20, width: 20),
                  ClipOval(
                      child: Image(
                    image: NetworkImage(
                        "https://cdn-icons-png.flaticon.com/512/567/567829.png"),
                    height: 100,
                    width: 100,
                  )),
                ])),
            SizedBox(height: 20, width: 20),
            Container(
                padding: EdgeInsets.all(25),
                child: Text("This audio relates to the question number 1",
                    style: TextStyle(
                        fontFamily: "Roboto",
                        fontSize: 17,
                        fontWeight: FontWeight.bold))),
            SizedBox(height: 20, width: 20),
            slider(),
            SizedBox(height: 20, width: 20),
            InkWell(
              onTap: () {
                getAudio();
              },
              child: Icon(
                  playing == false
                      ? Icons.play_circle_fill_rounded
                      : Icons.pause_circle_filled_rounded,
                  size: 70,
                  color: Colors.blue),
            ),
            SizedBox(height: 20, width: 20),
            Container(
              height: 250,
              width: 350,
              padding: EdgeInsets.all(20),
              decoration: BoxDecoration(color: Colors.pink[200]),
              child: Column(children: [
                Text(
                  "Where is Vita going to go?",
                  style: TextStyle(
                      fontFamily: "Roboto", fontSize: 25, color: Colors.black),
                ),
                Row(children: [
                  AbsorbPointer(
                    absorbing: true,
                    child: Checkbox(
                      value: pil1,
                      onChanged: (bool? value) {
                        setState(() {
                          
                          pil1 = value!;
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
                                          Navigator.push(context,
                                              MaterialPageRoute(
                                                  builder: (context) {
                                            return Soal23();
                                          }));
                                        },
                                        child: Text("Next Question",
                                            style: TextStyle(
                                                fontFamily: "PatuaOne",
                                                fontSize: 15,
                                                color: Colors.black)))
                                  ],
                                );
                              });
                        });
                      }),
                  ),
                  
                  Text("She is fine",
                      style: TextStyle(
                          fontFamily: "Roboto",
                          fontSize: 17,
                          color: Colors.black))
                ]),
                Row(children: [
                  Checkbox(
                      value: pil2,
                      onChanged: (bool? value) {
                        setState(() {
                          pil2 = true;
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
                                          Navigator.push(context,
                                              MaterialPageRoute(
                                                  builder: (context) {
                                            return Soal23();
                                          }));
                                        },
                                        child: Text("Next Question",
                                            style: TextStyle(
                                                fontFamily: "PatuaOne",
                                                fontSize: 15,
                                                color: Colors.black)))
                                  ],
                                );
                              });
                        });
                      }),
                  Text("She is going to Sarah's house",
                      style: TextStyle(
                          fontFamily: "Roboto",
                          fontSize: 17,
                          color: Colors.black))
                ]),
                Row(children: [
                  Checkbox(
                      value: pil3,
                      onChanged: (bool? value) {
                        setState(() {
                          pil3 = value!;
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
                                          Navigator.push(context,
                                              MaterialPageRoute(
                                                  builder: (context) {
                                            return Soal23();
                                          }));
                                        },
                                        child: Text("Next Question",
                                            style: TextStyle(
                                                fontFamily: "PatuaOne",
                                                fontSize: 15,
                                                color: Colors.black)))
                                  ],
                                );
                              });
                        });
                      }),
                  Text("Have a  nice day, Vita!",
                      style: TextStyle(
                          fontFamily: "Roboto",
                          fontSize: 17,
                          color: Colors.black))
                ]),
              ]),
            ),
            SizedBox(width: 35, height: 35),
            
          ]),
        ])));
  }

  Widget slider() {
    return Slider.adaptive(
        min: 0.0,
        value: position.inSeconds.toDouble(),
        max: duration.inSeconds.toDouble(),
        onChanged: (double value) {
          setState(() {
            audioPlayer.seek(new Duration(seconds: value.toInt()));
          });
        });
  }

  void getAudio() async {
    final player = AudioCache(prefix: 'assets/');
    final url = await player.load("vitaandluna.aac");

    if (playing) {
      var res = await audioPlayer.pause();
      if (res == 1) {
        setState(() {
          playing = false;
        });
      }
    } else {
      var res = await audioPlayer.play(url.path, isLocal: true);
      if (res == 1) {
        setState(() {
          playing = true;
        });
      }
    }
    audioPlayer.onDurationChanged.listen((Duration dd) {
      setState(() {
        duration = dd;
      });
    });
    audioPlayer.onAudioPositionChanged.listen((Duration dd) {
      setState(() {
        position = dd;
      });
    });
  }
}

//Soal 2-3
class Soal23 extends StatefulWidget {
  const Soal23({Key? key}) : super(key: key);

  @override
  State<Soal23> createState() => _Soal23State();
}

class _Soal23State extends State<Soal23> with TickerProviderStateMixin {
  AudioPlayer audioPlayer = new AudioPlayer();

  Duration duration = new Duration();
  Duration position = new Duration();

  bool playing = false;

  bool pil1 = false;
  bool pil2 = false;
  bool pil3 = false;

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
        body: Center(
            child: ListView(children: [
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
                    "Listening Part",
                    style: TextStyle(
                        fontFamily: "LilitaOne",
                        fontSize: 45,
                        color: Colors.black),
                    textAlign: TextAlign.center,
                  ),
                  SizedBox(height: 20, width: 20),
                  ClipOval(
                      child: Image(
                    image: NetworkImage(
                        "https://cdn-icons-png.flaticon.com/512/567/567829.png"),
                    height: 100,
                    width: 100,
                  )),
                ])),
            SizedBox(height: 20, width: 20),
            Container(
                padding: EdgeInsets.all(25),
                child: Text("This audio relates to the question number 2-3",
                    style: TextStyle(
                        fontFamily: "Roboto",
                        fontSize: 15,
                        fontWeight: FontWeight.bold))),
            SizedBox(height: 20, width: 20),
            slider(),
            SizedBox(height: 20, width: 20),
            InkWell(
              onTap: () {
                getAudio();
              },
              child: Icon(
                  playing == false
                      ? Icons.play_circle_fill_rounded
                      : Icons.pause_circle_filled_rounded,
                  size: 70,
                  color: Colors.blue),
            ),
            SizedBox(height: 20, width: 20),
            Container(
              height: 250,
              width: 350,
              padding: EdgeInsets.all(20),
              decoration: BoxDecoration(color: Colors.pink[100]),
              child: Column(children: [
                Text(
                  "Where does Andy live?",
                  style: TextStyle(
                      fontFamily: "Roboto", fontSize: 25, color: Colors.black),
                ),
                Row(children: [
                  Checkbox(
                      value: pil1,
                      onChanged: (bool? value) {
                        setState(() {
                          pil1 = value!;
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
                                          Navigator.push(context,
                                              MaterialPageRoute(
                                                  builder: (context) {
                                            return Soal45();
                                          }));
                                        },
                                        child: Text("Next Question",
                                            style: TextStyle(
                                                fontFamily: "PatuaOne",
                                                fontSize: 15,
                                                color: Colors.black)))
                                  ],
                                );
                              });
                        });
                      }),
                  Text("He is 13 years old",
                      style: TextStyle(
                          fontFamily: "Roboto",
                          fontSize: 17,
                          color: Colors.black))
                ]),
                Row(children: [
                  Checkbox(
                      value: pil2,
                      onChanged: (bool? value) {
                        setState(() {
                          pil2 = true;
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
                                          Navigator.push(context,
                                              MaterialPageRoute(
                                                  builder: (context) {
                                            return Soal45();
                                          }));
                                        },
                                        child: Text("Next Question",
                                            style: TextStyle(
                                                fontFamily: "PatuaOne",
                                                fontSize: 15,
                                                color: Colors.black)))
                                  ],
                                );
                              });
                        });
                      }),
                  Text("She lives in Banyuwangi",
                      style: TextStyle(
                          fontFamily: "Roboto",
                          fontSize: 17,
                          color: Colors.black))
                ]),
                Row(children: [
                  Checkbox(
                      value: pil3,
                      onChanged: (bool? value) {
                        setState(() {
                          pil3 = value!;
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
                                          Navigator.push(context,
                                              MaterialPageRoute(
                                                  builder: (context) {
                                            return Soal45();
                                          }));
                                        },
                                        child: Text("Next Question",
                                            style: TextStyle(
                                                fontFamily: "PatuaOne",
                                                fontSize: 15,
                                                color: Colors.black)))
                                  ],
                                );
                              });
                        });
                      }),
                  Text("He lives in Banyuwangi",
                      style: TextStyle(
                          fontFamily: "Roboto",
                          fontSize: 17,
                          color: Colors.black))
                ]),
              ]),
            ),
            SizedBox(width: 35, height: 35),
            
          ]),
        ])));
  }

  Widget slider() {
    return Slider.adaptive(
        min: 0.0,
        value: position.inSeconds.toDouble(),
        max: duration.inSeconds.toDouble(),
        onChanged: (double value) {
          setState(() {
            audioPlayer.seek(new Duration(seconds: value.toInt()));
          });
        });
  }

  void getAudio() async {
    final player = AudioCache(prefix: 'assets/');
    final url = await player.load("andybudiono.aac");

    if (playing) {
      var res = await audioPlayer.pause();
      if (res == 1) {
        setState(() {
          playing = false;
        });
      }
    } else {
      var res = await audioPlayer.play(url.path, isLocal: true);
      if (res == 1) {
        setState(() {
          playing = true;
        });
      }
    }
    audioPlayer.onDurationChanged.listen((Duration dd) {
      setState(() {
        duration = dd;
      });
    });
    audioPlayer.onAudioPositionChanged.listen((Duration dd) {
      setState(() {
        position = dd;
      });
    });
  }
}

//Soal 3
class Soal45 extends StatefulWidget {
  const Soal45({Key? key}) : super(key: key);

  @override
  State<Soal45> createState() => _Soal45State();
}

class _Soal45State extends State<Soal45> with TickerProviderStateMixin {
  AudioPlayer audioPlayer = new AudioPlayer();

  Duration duration = new Duration();
  Duration position = new Duration();

  bool playing = false;

  bool pil1 = false;
  bool pil2 = false;
  bool pil3 = false;

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
        body: Center(
            child: ListView(children: [
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
                    "Listening Part",
                    style: TextStyle(
                        fontFamily: "LilitaOne",
                        fontSize: 45,
                        color: Colors.black),
                    textAlign: TextAlign.center,
                  ),
                  SizedBox(height: 20, width: 20),
                  ClipOval(
                      child: Image(
                    image: NetworkImage(
                        "https://cdn-icons-png.flaticon.com/512/567/567829.png"),
                    height: 100,
                    width: 100,
                  )),
                ])),
            SizedBox(height: 20, width: 20),
            slider(),
            SizedBox(height: 20, width: 20),
            InkWell(
              onTap: () {
                getAudio();
              },
              child: Icon(
                  playing == false
                      ? Icons.play_circle_fill_rounded
                      : Icons.pause_circle_filled_rounded,
                  size: 70,
                  color: Colors.blue),
            ),
            SizedBox(height: 20, width: 20),
            Container(
              height: 250,
              width: 350,
              padding: EdgeInsets.all(20),
              decoration: BoxDecoration(color: Colors.pink[100]),
              child: Column(children: [
                Text(
                  "What are Andy's hobbies?",
                  
                  style: TextStyle(
                      fontFamily: "Roboto", fontSize: 25, color: Colors.black),
                ),
                Row(children: [
                  Checkbox(
                      value: pil1,
                      onChanged: (bool? value) {
                        setState(() {
                          pil1 = value!;
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
                                          Navigator.push(context,
                                              MaterialPageRoute(
                                                  builder: (context) {
                                            return Soal4();
                                          }));
                                        },
                                        child: Text("Next Question",
                                            style: TextStyle(
                                                fontFamily: "PatuaOne",
                                                fontSize: 15,
                                                color: Colors.black)))
                                  ],
                                );
                              });
                        });
                      }),
                  Flexible(
                    child: Text("They are playing soccer and reading",
                    
                        style: TextStyle(
                            fontFamily: "Roboto",
                            fontSize: 17,
                            color: Colors.black)),
                  )
                ]),
                Row(children: [
                  Checkbox(
                      value: pil2,
                      onChanged: (bool? value) {
                        setState(() {
                          pil2 = true;
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
                                          Navigator.push(context,
                                              MaterialPageRoute(
                                                  builder: (context) {
                                            return Soal4();
                                          }));
                                        },
                                        child: Text("Next Question",
                                            style: TextStyle(
                                                fontFamily: "PatuaOne",
                                                fontSize: 15,
                                                color: Colors.black)))
                                  ],
                                );
                              });
                        });
                      }),
                  Text("He likes cycling",
                      style: TextStyle(
                          fontFamily: "Roboto",
                          fontSize: 17,
                          color: Colors.black))
                ]),
                Row(children: [
                  Checkbox(
                      value: pil3,
                      onChanged: (bool? value) {
                        setState(() {
                          pil3 = value!;
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
                                          Navigator.push(context,
                                              MaterialPageRoute(
                                                  builder: (context) {
                                            return Soal4();
                                          }));
                                        },
                                        child: Text("Next Question",
                                            style: TextStyle(
                                                fontFamily: "PatuaOne",
                                                fontSize: 15,
                                                color: Colors.black)))
                                  ],
                                );
                              });
                        });
                      }),
                  Flexible(
                    child: Text("They are reading novels and comics",
                        style: TextStyle(
                            fontFamily: "Roboto",
                            fontSize: 17,
                            color: Colors.black)),
                  )
                ]),
              ]),
            ),
            SizedBox(width: 35, height: 35),
           
          ]),
        ])));
  }

  Widget slider() {
    return Slider.adaptive(
        min: 0.0,
        value: position.inSeconds.toDouble(),
        max: duration.inSeconds.toDouble(),
        onChanged: (double value) {
          setState(() {
            audioPlayer.seek(new Duration(seconds: value.toInt()));
          });
        });
  }

  void getAudio() async {
    final player = AudioCache(prefix: 'assets/');
    final url = await player.load("andybudiono.aac");

    if (playing) {
      var res = await audioPlayer.pause();
      if (res == 1) {
        setState(() {
          playing = false;
        });
      }
    } else {
      var res = await audioPlayer.play(url.path, isLocal: true);
      if (res == 1) {
        setState(() {
          playing = true;
        });
      }
    }
    audioPlayer.onDurationChanged.listen((Duration dd) {
      setState(() {
        duration = dd;
      });
    });
    audioPlayer.onAudioPositionChanged.listen((Duration dd) {
      setState(() {
        position = dd;
      });
    });
  }
}

//Soal 4
class Soal4 extends StatefulWidget {
  const Soal4({Key? key}) : super(key: key);

  @override
  State<Soal4> createState() => _Soal4State();
}

class _Soal4State extends State<Soal4> with TickerProviderStateMixin {
  AudioPlayer audioPlayer = new AudioPlayer();

  Duration duration = new Duration();
  Duration position = new Duration();

  bool playing = false;

  bool pil1 = false;
  bool pil2 = false;
  bool pil3 = false;

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
        body: Center(
            child: ListView(children: [
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
                    "Listening Part",
                    style: TextStyle(
                        fontFamily: "LilitaOne",
                        fontSize: 45,
                        color: Colors.black),
                    textAlign: TextAlign.center,
                  ),
                  SizedBox(height: 20, width: 20),
                  ClipOval(
                      child: Image(
                    image: NetworkImage(
                        "https://cdn-icons-png.flaticon.com/512/567/567829.png"),
                    height: 100,
                    width: 100,
                  )),
                ])),
            SizedBox(height: 20, width: 20),
            Container(
                padding: EdgeInsets.all(25),
                child: Text("This audio relates to the question number 4-5",
                    style: TextStyle(
                        fontFamily: "Roboto",
                        fontSize: 15,
                        fontWeight: FontWeight.bold))),
            SizedBox(height: 20, width: 20),
            slider(),
            SizedBox(height: 20, width: 20),
            InkWell(
              onTap: () {
                getAudio();
              },
              child: Icon(
                  playing == false
                      ? Icons.play_circle_fill_rounded
                      : Icons.pause_circle_filled_rounded,
                  size: 70,
                  color: Colors.blue),
            ),
            SizedBox(height: 20, width: 20),
            Container(
              height: 250,
              width: 350,
              padding: EdgeInsets.all(20),
              decoration: BoxDecoration(color: Colors.pink[100]),
              child: Column(children: [
                Text(
                  "What is Lisa's room painted?",
                  textAlign: TextAlign.left,
                  style: TextStyle(
                      fontFamily: "Roboto", fontSize: 25, color: Colors.black),
                ),
                Row(children: [
                  Checkbox(
                      value: pil1,
                      onChanged: (bool? value) {
                        setState(() {
                          pil1 = value!;
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
                                          Navigator.push(context,
                                              MaterialPageRoute(
                                                  builder: (context) {
                                            return Soal5();
                                          }));
                                        },
                                        child: Text("Next Question",
                                            style: TextStyle(
                                                fontFamily: "PatuaOne",
                                                fontSize: 15,
                                                color: Colors.black)))
                                  ],
                                );
                              });
                        });
                      }),
                  Text("It's painted light grey",
                      style: TextStyle(
                          fontFamily: "Roboto",
                          fontSize: 17,
                          color: Colors.black))
                ]),
                Row(children: [
                  Checkbox(
                      value: pil2,
                      onChanged: (bool? value) {
                        setState(() {
                          pil2 = true;
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
                                          Navigator.push(context,
                                              MaterialPageRoute(
                                                  builder: (context) {
                                            return Soal5();
                                          }));
                                        },
                                        child: Text("Next Question",
                                            style: TextStyle(
                                                fontFamily: "PatuaOne",
                                                fontSize: 15,
                                                color: Colors.black)))
                                  ],
                                );
                              });
                        });
                      }),
                  Text("It's painted grey",
                      style: TextStyle(
                          fontFamily: "Roboto",
                          fontSize: 17,
                          color: Colors.black))
                ]),
                Row(children: [
                  Checkbox(
                      value: pil3,
                      onChanged: (bool? value) {
                        setState(() {
                          pil3 = value!;
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
                                          Navigator.push(context,
                                              MaterialPageRoute(
                                                  builder: (context) {
                                            return Soal5();
                                          }));
                                        },
                                        child: Text("Next Question",
                                            style: TextStyle(
                                                fontFamily: "PatuaOne",
                                                fontSize: 15,
                                                color: Colors.black)))
                                  ],
                                );
                              });
                        });
                      }),
                  Text("It's painted light green",
                      style: TextStyle(
                          fontFamily: "Roboto",
                          fontSize: 17,
                          color: Colors.black))
                ]),
              ]),
            ),
            SizedBox(width: 35, height: 35),
            
          ]),
        ])));
  }

  Widget slider() {
    return Slider.adaptive(
        min: 0.0,
        value: position.inSeconds.toDouble(),
        max: duration.inSeconds.toDouble(),
        onChanged: (double value) {
          setState(() {
            audioPlayer.seek(new Duration(seconds: value.toInt()));
          });
        });
  }

  void getAudio() async {
    final player = AudioCache(prefix: 'assets/');
    final url = await player.load("lisabedroom.aac");

    if (playing) {
      var res = await audioPlayer.pause();
      if (res == 1) {
        setState(() {
          playing = false;
        });
      }
    } else {
      var res = await audioPlayer.play(url.path, isLocal: true);
      if (res == 1) {
        setState(() {
          playing = true;
        });
      }
    }
    audioPlayer.onDurationChanged.listen((Duration dd) {
      setState(() {
        duration = dd;
      });
    });
    audioPlayer.onAudioPositionChanged.listen((Duration dd) {
      setState(() {
        position = dd;
      });
    });
  }
}

//Soal 5
class Soal5 extends StatefulWidget {
  const Soal5({Key? key}) : super(key: key);

  @override
  State<Soal5> createState() => _Soal5State();
}

class _Soal5State extends State<Soal5> with TickerProviderStateMixin {
  AudioPlayer audioPlayer = new AudioPlayer();

  Duration duration = new Duration();
  Duration position = new Duration();

  bool playing = false;

  bool pil1 = false;
  bool pil2 = false;
  bool pil3 = false;

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
        body: Center(
            child: ListView(children: [
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
                    "Listening Part",
                    style: TextStyle(
                        fontFamily: "LilitaOne",
                        fontSize: 45,
                        color: Colors.black),
                    textAlign: TextAlign.center,
                  ),
                  SizedBox(height: 20, width: 20),
                  ClipOval(
                      child: Image(
                    image: NetworkImage(
                        "https://cdn-icons-png.flaticon.com/512/567/567829.png"),
                    height: 100,
                    width: 100,
                  )),
                ])),
            SizedBox(height: 20, width: 20),
            slider(),
            SizedBox(height: 20, width: 20),
            InkWell(
              onTap: () {
                getAudio();
              },
              child: Icon(
                  playing == false
                      ? Icons.play_circle_fill_rounded
                      : Icons.pause_circle_filled_rounded,
                  size: 70,
                  color: Colors.blue),
            ),
            SizedBox(height: 20, width: 20),
            Container(
              height: 250,
              width: 350,
              padding: EdgeInsets.all(20),
              decoration: BoxDecoration(color: Colors.pink[100]),
              child: Column(children: [
                Text(
                  "Where does she put all her clothes?",
                  style: TextStyle(
                      fontFamily: "Roboto", fontSize: 25, color: Colors.black),
                ),
                Row(children: [
                  Checkbox(
                      value: pil1,
                      onChanged: (bool? value) {
                        setState(() {
                          pil1 = value!;
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
                                          Navigator.push(context,
                                              MaterialPageRoute(
                                                  builder: (context) {
                                            return Home();
                                          }));
                                        },
                                        child: Text("Finish",
                                            style: TextStyle(
                                                fontFamily: "PatuaOne",
                                                fontSize: 15,
                                                color: Colors.black)))
                                  ],
                                );
                              });
                        });
                      }),
                  Flexible(
                    child: Text("She puts all her clothes on her desk",
                        style: TextStyle(
                            fontFamily: "Roboto",
                            fontSize: 17,
                            color: Colors.black)),
                  )
                ]),
                Row(children: [
                  Checkbox(
                      value: pil2,
                      onChanged: (bool? value) {
                        setState(() {
                          pil2 = true;
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
                                          Navigator.push(context,
                                              MaterialPageRoute(
                                                  builder: (context) {
                                            return Home();
                                          }));
                                        },
                                        child: Text("Finish",
                                            style: TextStyle(
                                                fontFamily: "PatuaOne",
                                                fontSize: 15,
                                                color: Colors.black)))
                                  ],
                                );
                              });
                        });
                      }),
                  Flexible(
                    child: Text("She puts all her clothes inside the drawer",
                        style: TextStyle(
                            fontFamily: "Roboto",
                            fontSize: 17,
                            color: Colors.black)),
                  )
                ]),
                Row(children: [
                  Checkbox(
                      value: pil3,
                      onChanged: (bool? value) {
                        setState(() {
                          pil3 = value!;
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
                                          Navigator.push(context,
                                              MaterialPageRoute(
                                                  builder: (context) {
                                            return Home();
                                          }));
                                        },
                                        child: Text("Finish",
                                            style: TextStyle(
                                                fontFamily: "PatuaOne",
                                                fontSize: 15,
                                                color: Colors.black)))
                                  ],
                                );
                              });
                        });
                      }),
                  Flexible(
                    child: Text("She puts all her clothes on her bed",
                        style: TextStyle(
                            fontFamily: "Roboto",
                            fontSize: 17,
                            color: Colors.black)),
                  )
                ]),
              ]),
            ),
            SizedBox(width: 35, height: 35),
            
          ]),
        ])));
  }

  Widget slider() {
    return Slider.adaptive(
        min: 0.0,
        value: position.inSeconds.toDouble(),
        max: duration.inSeconds.toDouble(),
        onChanged: (double value) {
          setState(() {
            audioPlayer.seek(new Duration(seconds: value.toInt()));
          });
        });
  }

  void getAudio() async {
    final player = AudioCache(prefix: 'assets/');
    final url = await player.load("lisabedroom.aac");

    if (playing) {
      var res = await audioPlayer.pause();
      if (res == 1) {
        setState(() {
          playing = false;
        });
      }
    } else {
      var res = await audioPlayer.play(url.path, isLocal: true);
      if (res == 1) {
        setState(() {
          playing = true;
        });
      }
    }
    audioPlayer.onDurationChanged.listen((Duration dd) {
      setState(() {
        duration = dd;
      });
    });
    audioPlayer.onAudioPositionChanged.listen((Duration dd) {
      setState(() {
        position = dd;
      });
    });
  }
}
