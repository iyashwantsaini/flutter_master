import 'package:flutter/material.dart';

// void main(){
//   runApp(MyApp());
// }
// OR
void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
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
        body: Text('Hello_World'),
      ),
    );
  }
}
