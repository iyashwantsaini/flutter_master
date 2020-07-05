import 'package:flutter/material.dart';
// question file i created
import './question.dart';
import './answer.dart';

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

  void annQues() {
    // setstate used to change state on button press
    setState(() {
      _quesIndex += 1;
    });
  }

  var questions = [
    {
      'quesText': 'What\'s my fav Color?',
      'answers': ['Black', 'Green', 'White']
    },
    {
      'quesText': 'What\'s my fav Bool?',
      'answers': ['Half', 'Grey', 'Harry']
    },
    {
      'quesText': 'What\'s my fav Animal?',
      'answers': ['Owl', 'Cat', 'Dog']
    },
  ];
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
        body: Column(
          children: [
            // text is a stateless widget
            // Question is a ustom widget
            Question(questions[_quesIndex]['quesText']),
            (questions[_quesIndex]['answers'] as List<String>).map((answer){
              return Answer(annQues,answer);
            }).toList(),
            // RaisedButton(
            //   child: Text(questions.elementAt(1)),
            //   onPressed: ()=> print('method_2'),
            // ),
            // RaisedButton(
            //   child: Text(questions[2]),
            //   onPressed: (){
            //     //..
            //     print('method_3');
            //   },
            // ),
          ],
        ),
      ),
    );
  }
}
