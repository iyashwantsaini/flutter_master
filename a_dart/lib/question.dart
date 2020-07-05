import 'package:flutter/material.dart';


// everything is public here
class Question extends StatelessWidget {
  String questionText;

// constructor
// simple
  Question(this.questionText);
  // names arg
  // Question({this.questionText});


  @override
  Widget build(BuildContext context) {
    return Text(questionText);
  }
}