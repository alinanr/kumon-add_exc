import 'package:flutter/material.dart';
import 'package:kumon_addexc/answerpastperfectprogressive.dart';

class QuizPastPerfectProg extends StatefulWidget {
  const QuizPastPerfectProg({ Key? key }) : super(key: key);

  @override
  State<QuizPastPerfectProg> createState() => _QuizPastPerfectProgState();
}

class _QuizPastPerfectProgState extends State<QuizPastPerfectProg> {
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
                  .map((answer) => AnswerPastPerfectProg(
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
    'question': 'Their house ...... a good house, we ...... there for 4 years',
    'answers': [
      {'answerText': 'is/live', 'score': false},
      {'answerText': 'was/lived', 'score': false},
      {'answerText': 'was/had been living', 'score': true},
    ],
  },
  //2
  {
    'question': 'We ...... , when she ...... here ',
    'answers': [
      {'answerText': 'have left/came', 'score': false},
      {'answerText': 'had been leaving/came', 'score': true},
      {'answerText': 'had left/came', 'score': false},
    ],
  },
  //3
  {
    'question': 'The cow ...... water after my father ...... them medicine',
    'answers': [
      {'answerText': 'has been drinking/gave', 'score': false},
      {'answerText': 'had drunk/give', 'score': false},
      {'answerText': 'had been drinking/gave', 'score': true},
    ],
  },
  //4
  {
    'question': 'The weather ...... hot because It ...... for 3 days ',
    'answers': [
      {'answerText': 'was/has not been raining', 'score': false},
      {'answerText': 'was/had not rained', 'score': false},
      {'answerText': 'was/had not been raining', 'score': true},
    ],
  },
  //5
  {
    'question': 'Sarah ...... her cats before her mother ...... her',
    'answers': [
      {'answerText': 'had not been feeding/told', 'score': true},
      {'answerText': 'has not been feeding/told', 'score': false},
      {'answerText': 'had not fed/told', 'score': false},
    ],
  },
  //6
  {
    'question': ' ...... the rooster ...... faster after I left? ',
    'answers': [
      {'answerText': 'Has/been walking', 'score': false},
      {'answerText': 'Had/walked', 'score': false},
      {'answerText': 'Had/been walking', 'score': true},
    ],
  },
  //7
  {
    'question': ' ...... the man ...... so long when the doctor entered the room?',
    'answers': [
      {'answerText': 'Have/stood', 'score': false},
      {'answerText': 'Had/been standing', 'score': true},
      {'answerText': 'Has/been standing', 'score': false},
    ],
  },
  //8
  {
    'question': '...... the girl ...... for so long ?',
    'answers': [
      {'answerText': 'Has/cried', 'score': false},
      {'answerText': 'Had/crying', 'score': false},
      {'answerText': 'Had/been crying', 'score': true},
    ],
  },
  //9
  {
    'question': 'My father ...... when I ...... my homework',
    'answers': [
      {'answerText': 'had not slept/finished', 'score': false},
      {'answerText': 'Has not been sleeping/finished', 'score': false},
      {'answerText': 'Had not been sleeping/', 'score': true},
    ],
  },
  //10
  {
    'question': 'I ...... this comic before ',
    'answers': [
      {'answerText': 'have readning', 'score': false},
      {'answerText': 'has been reading', 'score': false},
      {'answerText': 'had been reading', 'score': true},
    ],
  },
];