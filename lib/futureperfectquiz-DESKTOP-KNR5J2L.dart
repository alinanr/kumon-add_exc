import 'package:flutter/material.dart';
import 'package:kumon_addexc/answerfutureperfect.dart';
import 'gantiprofil.dart';

class QuizFuturePerfect extends StatefulWidget {
  const QuizFuturePerfect({Key? key}) : super(key: key);

  @override
  State<QuizFuturePerfect> createState() => _QuizFuturePerfectState();
}

class _QuizFuturePerfectState extends State<QuizFuturePerfect> {
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
                  .map((answer) => AnswerFuturePerfect(
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
    'question': 'He ...... finished his study next year',
    'answers': [
      {'answerText': 'would', 'score': false},
      {'answerText': 'will', 'score': false},
      {'answerText': 'will have', 'score': true},
    ],
  },
  //2
  {
    'question': 'They ...... catched the thief by the time my mom get there',
    'answers': [
      {'answerText': 'will', 'score': false},
      {'answerText': 'will have', 'score': true},
      {'answerText': 'would', 'score': false},
    ],
  },
  //3
  {
    'question': 'I ...... here by the time Lisa arrive tomorrow',
    'answers': [
      {'answerText': 'will', 'score': false},
      {'answerText': 'am', 'score': false},
      {'answerText': 'will have been', 'score': true},
    ],
  },
  //4
  {
    'question': 'My father ...... a meeting after my sister get to his office',
    'answers': [
      {'answerText': 'will do', 'score': false},
      {'answerText': 'would do', 'score': false},
      {'answerText': 'will have done', 'score': true},
    ],
  },
  //5
  {
    'question': 'I ...... a bath before you call me',
    'answers': [
      {'answerText': 'will have taken', 'score': true},
      {'answerText': 'will take', 'score': false},
      {'answerText': 'would take', 'score': false},
    ],
  },
  //6
  {
    'question': 'The exam ...... until my friends come to the class tomorrow',
    'answers': [
      {'answerText': 'will not start', 'score': false},
      {'answerText': 'would not start', 'score': false},
      {'answerText': 'will have started', 'score': true},
    ],
  },
  //7
  {
    'question': 'The kids ...... by the time their mother pick them up',
    'answers': [
      {'answerText': 'will not play', 'score': false},
      {'answerText': 'will not have played', 'score': true},
      {'answerText': 'have not played', 'score': false},
    ],
  },
  //8
  {
    'question':
        '...... you ...... before the coach arrive at the swimming pool?',
    'answers': [
      {'answerText': 'Will/swim', 'score': false},
      {'answerText': 'Have/swam', 'score': false},
      {'answerText': 'Will/have swum', 'score': true},
    ],
  },
  //9
  {
    'question': '...... she ...... earlier next week?',
    'answers': [
      {'answerText': 'Will/have come', 'score': true},
      {'answerText': 'Would/come', 'score': false},
      {'answerText': 'Have/come', 'score': false},
    ],
  },
  //10
  {
    'question': 'Sinta and Santi ...... in the park by the time I get home',
    'answers': [
      {'answerText': 'will', 'score': false},
      {'answerText': 'would be', 'score': false},
      {'answerText': 'will have been', 'score': true},
    ],
  },
];
