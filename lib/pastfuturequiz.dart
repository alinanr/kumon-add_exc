import 'package:flutter/material.dart';
import 'package:kumon_addexc/answerpastfuture.dart';

class QuizPastFuture extends StatefulWidget {
  const QuizPastFuture({ Key? key }) : super(key: key);

  @override
  State<QuizPastFuture> createState() => _QuizPastFutureState();
}

class _QuizPastFutureState extends State<QuizPastFuture> {
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
                  .map((answer) => AnswerPastFuture(
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
    'question': 'We ...... here if we had time yesterday',
    'answers': [
      {'answerText': 'will be', 'score': false},
      {'answerText': 'would', 'score': false},
      {'answerText': 'would be', 'score': true},
    ],
  },
  //2
  {
    'question': 'I ...... a new cellphone if my mother gave me some money',
    'answers': [
      {'answerText': 'will buy', 'score': false},
      {'answerText': 'would buy', 'score': true},
      {'answerText': 'will be buying', 'score': false},
    ],
  },
  //3
  {
    'question': 'Merry ...... to the party if she had a meeting the day before',
    'answers': [
      {'answerText': 'will not come', 'score': false},
      {'answerText': 'will not be coming', 'score': false},
      {'answerText': 'would not come', 'score': true},
    ],
  },
  //4
  {
    'question': 'Fandy ...... an English anymore yesterday if he left the school',
    'answers': [
      {'answerText': 'will not teach', 'score': false},
      {'answerText': 'is going to teach', 'score': false},
      {'answerText': 'would teach', 'score': true},
    ],
  },
  //5
  {
    'question': '...... you ...... me if you had time?',
    'answers': [
      {'answerText': 'Would/visit', 'score': true},
      {'answerText': 'Would/visited', 'score': false},
      {'answerText': 'Will/visit', 'score': false},
    ],
  },
  //6
  {
    'question': '...... your uncle ...... to New York if he had a family there?',
    'answers': [
      {'answerText': 'Will/move', 'score': false},
      {'answerText': 'Would/moved', 'score': false},
      {'answerText': 'Would/move', 'score': true},
    ],
  },
  //7
  {
    'question': 'Kiki and his friends ...... early if they were absent from school',
    'answers': [
      {'answerText': 'will not get up', 'score': false},
      {'answerText': 'would not get up', 'score': true},
      {'answerText': 'would not got up', 'score': false},
    ],
  },
  //8
  {
    'question': 'My aunt ...... a new baby if she were still young',
    'answers': [
      {'answerText': 'will own', 'score': false},
      {'answerText': 'would owned', 'score': false},
      {'answerText': 'would own', 'score': true},
    ],
  },
  //9
  {
    'question': 'The mouse ...... sick if it did not eat the day before',
    'answers': [
      {'answerText': 'will be', 'score': false},
      {'answerText': 'would', 'score': false},
      {'answerText': 'would be', 'score': true},
    ],
  },
  //10
  {
    'question': 'The dogs ...... if they were stuffed',
    'answers': [
      {'answerText': 'would slept', 'score': false},
      {'answerText': 'will sleep', 'score': false},
      {'answerText': 'would sleep', 'score': true},
    ],
  },
];