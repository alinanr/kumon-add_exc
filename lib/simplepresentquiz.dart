

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:kumon_addexc/answer.dart';
import 'package:kumon_addexc/answerpresenttense.dart';

class QuizPresent extends StatefulWidget {
  const QuizPresent({Key? key}) : super(key: key);

  @override
  State<QuizPresent> createState() => _QuizPresentState();
}

class _QuizPresentState extends State<QuizPresent> {
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
        body: ListView(children: [
          Center(
            child: Column(children: [
              Row(
                children: [
                  if (_scoreTracker.length == 0)
                    SizedBox(height: 25, width: 25),
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
                    child: Text(
                        _questions[_questionIndex]['question'] as String,
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontSize: 20,
                            color: Colors.black,
                            fontFamily: "Roboto",
                            fontWeight: FontWeight.bold)),
                  )),
              ...(_questions[_questionIndex]['answers']
                      as List<Map<String, Object>>)
                  .map((answer) => AnswerPresent(
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
                child: Text('${_totalScore.toString()} points',
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
                      _totalScore > 40
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
    'question': 'She ...... a nurse',
    'answers': [
      {'answerText': 'am', 'score': false},
      {'answerText': 'are', 'score': false},
      {'answerText': 'is', 'score': true},
    ],
  },
  //2
  {
    'question': 'They ...... police officers',
    'answers': [
      {'answerText': 'am', 'score': false},
      {'answerText': 'are', 'score': true},
      {'answerText': 'is', 'score': false},
    ],
  },
  //3
  {
    'question': 'It ...... a dog, but It .... a cat',
    'answers': [
      {'answerText': 'am not/am', 'score': false},
      {'answerText': 'are not/are', 'score': false},
      {'answerText': 'is not/is', 'score': true},
    ],
  },
  //4
  {
    'question': 'My father ...... in the hotel',
    'answers': [
      {'answerText': 'is work', 'score': false},
      {'answerText': 'work', 'score': false},
      {'answerText': 'works', 'score': true},
    ],
  },
  //5
  {
    'question': 'We ...... a new house',
    'answers': [
      {'answerText': 'have', 'score': true},
      {'answerText': 'has', 'score': false},
      {'answerText': 'is have', 'score': false},
    ],
  },
  //6
  {
    'question': 'Rina ...... to school by bus in the morning',
    'answers': [
      {'answerText': 'go', 'score': false},
      {'answerText': 'is going', 'score': false},
      {'answerText': 'goes', 'score': true},
    ],
  },
  //7
  {
    'question': 'The children ...... English, but Japanese every Tuesday',
    'answers': [
      {'answerText': 'does not study', 'score': false},
      {'answerText': 'do not study', 'score': true},
      {'answerText': 'are not study', 'score': false},
    ],
  },
  //8
  {
    'question': '...... that rabbit always eat those carrots?',
    'answers': [
      {'answerText': 'Do', 'score': false},
      {'answerText': 'Is', 'score': false},
      {'answerText': 'Does', 'score': true},
    ],
  },
  //9
  {
    'question': '...... your parents at home today?',
    'answers': [
      {'answerText': 'Are', 'score': true},
      {'answerText': 'Is', 'score': false},
      {'answerText': 'Am', 'score': false},
    ],
  },
  //10
  {
    'question': 'Rana and Rini ...... to eat noodles in the evening',
    'answers': [
      {'answerText': 'likes', 'score': false},
      {'answerText': 'are like', 'score': false},
      {'answerText': 'like', 'score': true},
    ],
  },
];
