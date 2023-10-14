import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:kumon_addexc/home.dart';
import 'package:kumon_addexc/loginpage.dart';
import 'package:audioplayers/audioplayers.dart';


class Summary extends StatefulWidget {
  @override
  _SummaryState createState() => _SummaryState();
}

class _SummaryState extends State<Summary> {
  AudioPlayer audioPlayer = new AudioPlayer();
  Duration duration = new Duration();
  Duration position = new Duration();

  bool playing = false;
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
      body: Center(
        child: ListView(children: [
          Center(
            child:
                Column(mainAxisAlignment: MainAxisAlignment.center, children: [
              Padding(padding: EdgeInsets.all(15)),
              Text(
                "Congratulations ",
                style: TextStyle(
                    fontSize: 35,
                    fontFamily: "PatuaOne",
                    color: Colors.black,
                    fontWeight: FontWeight.w700),
              ),
              SizedBox(
                width: 25,
                height: 25,
              ),
              Container(
                height: 250,
                width: 300,
                decoration: BoxDecoration(
                    // border: Border.all(color: Color(0xFFFFFFFF), width: 7),
                    borderRadius: BorderRadius.circular(15)),
                padding: EdgeInsets.all(5),
                child: new Image.asset(
                  'images/claphands.gif',
                  width: 30,
                  height: 25,
                  fit: BoxFit.cover,
                ),
                clipBehavior: Clip.hardEdge,
              ),
              
                
              SizedBox(width: 25, height: 20),
              Column(children: [
                ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      primary: Colors.pink[200],
                      onPrimary: Colors.white,
                      alignment: Alignment.center,
                      fixedSize: Size(200, 70),
                      padding: EdgeInsets.all(20),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15)),
                    ),
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) {
                        return Home();
                      }));
                    },
                    child: Text("Back To Home",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontFamily: "PatuaOne",
                            fontSize: 20,
                            fontWeight: FontWeight.w300,
                            color: Colors.black))),
                SizedBox(width: 25, height: 20),
                ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      primary: Colors.pink[200],
                      onPrimary: Colors.white,
                      alignment: Alignment.center,
                      fixedSize: Size(200, 70),
                      padding: EdgeInsets.all(20),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15)),
                    ),
                    onPressed: () {
                      Navigator.pushAndRemoveUntil(
                        context,
                        MaterialPageRoute(builder: (context) => LoginPage()),
                        (Route<dynamic> route) => false,
                      );
                    },
                    child: Text("Log Out",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontFamily: "PatuaOne",
                            fontSize: 20,
                            fontWeight: FontWeight.w300,
                            color: Colors.black))),
              ])
            ]),
          ),
        ]),
      ),
    );
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
    final url = await player.load("clapinghand.m");

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
