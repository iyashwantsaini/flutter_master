import 'package:flutter/material.dart';
// question file i created
// import './question.dart';
// import './answer.dart';

import './quiz.dart';
import './result.dart';

// void main(){
//   runApp(MyApp());
// }
// OR
void main() => runApp(MyApp());

// Stateless has 1 class only
// Stateful has 2 classess
// every fn for a widget must go in same class
// class MyApp extends StatelessWidget {

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // throw UnimplementedError();
    return _MyAppState();
  }
}

// a leading "_" means private class or function or variable
// This means that this can be accessed only from inside the main.dart file
// this state belongs to myapp class
class _MyAppState extends State<MyApp> {
  var _quesIndex = 0;
  final _questions = const [
    {
      'questionText': 'What\'s your favorite color?',
      'answers': [
        {'text': 'Black', 'score': 10},
        {'text': 'Red', 'score': 5},
        {'text': 'Green', 'score': 3},
        {'text': 'White', 'score': 1},
      ],
    },
    {
      'questionText': 'What\'s your favorite animal?',
      'answers': [
        {'text': 'Rabbit', 'score': 3},
        {'text': 'Snake', 'score': 11},
        {'text': 'Elephant', 'score': 5},
        {'text': 'Lion', 'score': 9},
      ],
    },
    {
      'questionText': 'Who\'s your favorite instructor?',
      'answers': [
        {'text': 'Max', 'score': 1},
        {'text': 'Max', 'score': 1},
        {'text': 'Max', 'score': 1},
        {'text': 'Max', 'score': 1},
      ],
    },
  ];

  var _totalScore = 0;

  void _resetQuiz() {
    setState(() {
      _quesIndex = 0;
      _totalScore = 0;
    });
  }

  void annQues(int score) {
    _totalScore += score;

    // setstate used to change state on button press
    setState(() {
      _quesIndex += 1;
    });

    if (_quesIndex < _questions.length) {
      print('more ques');
    } else {
      print('out of range');
    }
  }

  // decorator to override stateless method
  @override
  Widget build(BuildContext context) {
    // material app provided by material.dart
    // Scaffold gives base structure of app
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Dart_Basics'),
        ),
        // body: Text('Hello_World'),
        // Column : Align top to bottom
        // terniary block
        body: _quesIndex < _questions.length
              ? Quiz(
                answerQuestion: annQues,
                questionIndex: _quesIndex,
                questions: _questions,
              )
              : Result(_totalScore, _resetQuiz),
            // ? Column(
            //     children: [
            //       // text is a stateless widget
            //       // Question is a ustom widget
            //       Question(questions[_quesIndex]['quesText']),
            //       // ... TAKES all list items and adds them to surrounding list as individual values
            //       ...(questions[_quesIndex]['answers'] as List<String>)
            //           .map((answer) {
            //         return Answer(annQues, answer);
            //       }).toList(),
            //       // RaisedButton(
            //       //   child: Text(questions.elementAt(1)),
            //       //   onPressed: ()=> print('method_2'),
            //       // ),
            //       // RaisedButton(
            //       //   child: Text(questions[2]),
            //       //   onPressed: (){
            //       //     //..
            //       //     print('method_3');
            //       //   },
            //       // ),
            //     ],
            //     // else block
            //   )
            // : Center(child: Text('Finished!')),
      ),
    );
  }
}
