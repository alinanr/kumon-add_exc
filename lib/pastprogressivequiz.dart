import 'package:flutter/material.dart';
import 'package:kumon_addexc/answerpastprogressive.dart';

class QuizPastProg extends StatefulWidget {
  const QuizPastProg({ Key? key }) : super(key: key);

  @override
  State<QuizPastProg> createState() => _QuizPastProgState();
}

class _QuizPastProgState extends State<QuizPastProg> {
  List<Icon> _scoreTracker = [];
  int _questionIndex = 0;
  int _totalScore = 0;
  int _maxScore = 100;
  bool answerWasSelected = false;
  bool endOfQuiz = false;
  bool correctAnswerSelected = false;

  void _questionAnswer(bool? answerScore) {
    setState(() {
      answerWasSelected = true;

      if (answerScore!) {
        _totalScore = _totalScore + 10;
        correctAnswerSelected = true;
      } else {
        _totalScore = _totalScore - 5;
      }
     

      if (_questionIndex + 1 == _questions.length) {
        endOfQuiz = true;
      }
    });
  }

  void _nextQuestion() {
    setState(() {
      _questionIndex++;
      answerWasSelected = false;
      correctAnswerSelected = false;
    });
    if (_questionIndex >= _questions.length) {
      _resetQuiz();
    }
  }

  void _resetQuiz() {
    setState(() {
      _questionIndex = 0;
      _totalScore = 0;
      _scoreTracker = [];
      endOfQuiz = false;
    });
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
        body: ListView(
          children: [Center(
            child: Column(children: [
              Row(
                children: [
                  if (_scoreTracker.length == 0) SizedBox(height: 25, width: 25),
                  if (_scoreTracker.length > 0) ..._scoreTracker
                ],
              ),
              SizedBox(width: 25, height: 25),
              Container(
                  width: double.infinity,
                  height: 150.0,
                  margin: EdgeInsets.only(bottom: 10, left: 30, right: 30),
                  padding: EdgeInsets.symmetric(horizontal: 50, vertical: 20),
                  decoration: BoxDecoration(
                      color: Colors.amber[100],
                      borderRadius: BorderRadius.circular(15)),
                  child: Center(
                    child: Text(_questions[_questionIndex]['question'] as String,
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontSize: 20,
                            color: Colors.black,
                            fontFamily: "Roboto",
                            fontWeight: FontWeight.bold)),
                  )),
              ...(_questions[_questionIndex]['answers']
                      as List<Map<String, Object>>)
                  .map((answer) => AnswerPastProg(
                      answerText: answer['answerText'] as String?,
                      answerColor: answerWasSelected
                          ? answer['score'] as bool
                              ? Colors.green
                              : Colors.red
                          : null,
                      answerTap: () {
                        if (answerWasSelected) {
                          return;
                        }
                        _questionAnswer(answer['score'] as bool?);
                      })),
              SizedBox(height: 25, width: 25),
              ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      primary: Colors.deepOrange[200],
                      onPrimary: Colors.black,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30)),
                      minimumSize: Size(double.maxFinite, 70)),
                  onPressed: () {
                    if (!answerWasSelected) {
                      ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                          content: Text(
                              "Please select answer before go to the next question")));
                      return;
                    }
                    _nextQuestion();
                  },
                  child: Text(endOfQuiz ? 'Restart Quiz' : "Next Question",
                      style: TextStyle(
                          fontFamily: "PatuaOne",
                          fontSize: 25,
                          fontWeight: FontWeight.bold))),
              SizedBox(width: 20, height: 20),
              Container(
                padding: EdgeInsets.all(10),
                child:
                    Text('${_totalScore.toString()} points',
                        style: TextStyle(
                          color: Colors.blue[900],
                          fontFamily: "LilitaOne",
                          fontSize: 40,
                          fontWeight: FontWeight.bold,
                        )),
              ),
              if (endOfQuiz)
                Container(
                  height: 100,
                  width: double.infinity,
                  color: Colors.black,
                  child: Center(
                    child: Text(
                      _totalScore > 4
                          ? 'Done Your Final Score is : $_totalScore'
                          : 'Your final Score is  $_totalScore, better luck next time!',
                      style: TextStyle(
                          fontSize: 20,
                          fontFamily: "Roboto",
                          fontWeight: FontWeight.bold,
                          color: _totalScore > 4 ? Colors.green : Colors.red),
                    ),
                  ),
                ),
            ]),
          ),
        ]));
  }
}

final _questions = const [
  //1
  {
    'question': 'Mr. Dani ...... in his office yesterday',
    'answers': [
      {'answerText': 'is working', 'score': false},
      {'answerText': 'were working', 'score': false},
      {'answerText': 'was working', 'score': true},
    ],
  },
  //2
  {
    'question': 'Rini and Rara ...... in the International School last year',
    'answers': [
      {'answerText': 'are teaching ', 'score': false},
      {'answerText': 'were teaching', 'score': true},
      {'answerText': 'is teaching', 'score': false},
    ],
  },
  //3
  {
    'question': 'The policemen ...... the robbers last night ',
    'answers': [
      {'answerText': 'chasing', 'score': false},
      {'answerText': 'chase', 'score': false},
      {'answerText': 'were chasing', 'score': true},
    ],
  },
  //4
  {
    'question': 'She ...... the car this morning',
    'answers': [
      {'answerText': 'is washing', 'score': false},
      {'answerText': 'were washing', 'score': false},
      {'answerText': 'was washing', 'score': true},
    ],
  },
  //5
  {
    'question': 'I ...... soccer yesterday, but tennis ',
    'answers': [
      {'answerText': 'was not playing', 'score': true},
      {'answerText': 'not played', 'score': false},
      {'answerText': 'am not playing', 'score': false},
    ],
  },
  //6
  {
    'question': '...... you ...... the party last night?',
    'answers': [
      {'answerText': 'are/joining', 'score': false},
      {'answerText': 'were/joined', 'score': false},
      {'answerText': 'were/joining', 'score': true},
    ],
  },
  //7
  {
    'question': '...... he ...... the kitchen 1 hour ago?',
    'answers': [
      {'answerText': 'Were/cleaning', 'score': false},
      {'answerText': 'Was/cleaning', 'score': true},
      {'answerText': 'Is/cleaning', 'score': false},
    ],
  },
  //8
  {
    'question': '...... that elephant running to the street this morning?',
    'answers': [
      {'answerText': 'Is', 'score': false},
      {'answerText': 'Were', 'score': false},
      {'answerText': 'Was', 'score': true},
    ],
  },
  //9
  {
    'question': 'The mice ...... to the river last week',
    'answers': [
      {'answerText': 'are going', 'score': false},
      {'answerText': 'was going', 'score': false},
      {'answerText': 'were going', 'score': true},
    ],
  },
  //10
  {
    'question': 'They ...... the viral song last night ',
    'answers': [
      {'answerText': 'are singing', 'score': false},
      {'answerText': 'was singing', 'score': false},
      {'answerText': 'were singing', 'score': true},
    ],
  },
];