import 'package:flutter/material.dart';

// void main(){
//   runApp(MyApp());
// }
// OR
void main() => runApp(MyApp());

// Stateless has 1 class only
// Stateful has 2 classess
// every fn for a widget must go in same class 
// class MyApp extends StatelessWidget {

class MyApp extends StatefulWidget{

}

class MyAppState extends State{
  var quesIndex =0;

  void annQues(){
    quesIndex+=1;
  }

  var questions = ['What\'s', 'Your', 'Fav', 'Color'];
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
            Text('The Question!'),
            RaisedButton(
              child: Text(questions[quesIndex]),
              // dont execute here as only execute when user presses
              onPressed: annQues,
            ),
            RaisedButton(
              child: Text(questions.elementAt(1)),
              onPressed: ()=> print('method_2'),
            ),
            RaisedButton(
              child: Text(questions[2]),
              onPressed: (){
                //..
                print('method_3');
              },
            ),
          ],
        ),
      ),
    );
  }
}
