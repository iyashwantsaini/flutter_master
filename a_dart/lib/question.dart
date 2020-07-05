import 'package:flutter/material.dart';

// everything is public here
class Question extends StatelessWidget {
  // final means we cannot reassign this string
  final String questionText;

// constructor
// simple
  Question(this.questionText);
  // names arg
  // Question({this.questionText});

  @override
  Widget build(BuildContext context) {
    return Container(
      // takes full width
      width: double.infinity,
      margin: EdgeInsets.all(10),
      child: Text(
        questionText,
        style: TextStyle(fontSize: 35),
        textAlign: TextAlign.center,
      ),
    );
  }
}
