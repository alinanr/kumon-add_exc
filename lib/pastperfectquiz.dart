import 'package:flutter/material.dart';
import 'package:kumon_addexc/answerpastperfect.dart';


class QuizPastPerfect extends StatefulWidget {
  const QuizPastPerfect({ Key? key }) : super(key: key);

  @override
  State<QuizPastPerfect> createState() => _QuizPastPerfectState();
}

class _QuizPastPerfectState extends State<QuizPastPerfect> {
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
                  .map((answer) => AnswerPastPerfect(
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
    'question': 'When she ...... five years old, she ...... to London',
    'answers': [
      {'answerText': 'was/gone', 'score': false},
      {'answerText': 'were/went', 'score': false},
      {'answerText': 'was/had gone', 'score': true},
    ],
  },
  //2
  {
    'question': 'We ...... this test before',
    'answers': [
      {'answerText': 'have done', 'score': false},
      {'answerText': 'had done', 'score': true},
      {'answerText': 'did', 'score': false},
    ],
  },
  //3
  {
    'question': 'The farmers ...... to this land several times before',
    'answers': [
      {'answerText': 'moved', 'score': false},
      {'answerText': 'has moved', 'score': false},
      {'answerText': 'had moved', 'score': true},
    ],
  },
  //4
  {
    'question': 'He ...... the expensive camera, when I ...... here',
    'answers': [
      {'answerText': 'has not bought/come', 'score': false},
      {'answerText': 'had not buy/came', 'score': false},
      {'answerText': 'had not bought/came', 'score': true},
    ],
  },
  //5
  {
    'question': 'I ...... this contract before',
    'answers': [
      {'answerText': 'had not signed', 'score': true},
      {'answerText': 'did not sign', 'score': false},
      {'answerText': 'have not signed', 'score': false},
    ],
  },
  //6
  {
    'question': '...... you ...... the pizza before?',
    'answers': [
      {'answerText': 'Have/eaten', 'score': false},
      {'answerText': 'Were/eaten', 'score': false},
      {'answerText': 'Had/eaten', 'score': true},
    ],
  },
  //7
  {
    'question': '...... you ...... here when she went out?',
    'answers': [
      {'answerText': 'Have/been', 'score': false},
      {'answerText': 'Had/been', 'score': true},
      {'answerText': 'Has/been', 'score': false},
    ],
  },
  //8
  {
    'question': '...... the shark already ...... the local people yesterday?',
    'answers': [
      {'answerText': 'Had/ate', 'score': false},
      {'answerText': 'Have/eaten', 'score': false},
      {'answerText': 'Had/eaten', 'score': true},
    ],
  },
  //9
  {
    'question': 'My grandmother ...... me in Switzerland for 2 years',
    'answers': [
      {'answerText': 'have not', 'score': false},
      {'answerText': 'did not', 'score': false},
      {'answerText': 'had not', 'score': true},
    ],
  },
  //10
  {
    'question': 'The weather ...... already cold ',
    'answers': [
      {'answerText': 'was', 'score': false},
      {'answerText': 'have been', 'score': false},
      {'answerText': 'had been', 'score': true},
    ],
  },
];