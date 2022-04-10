import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(
        title: Text("Quiz App"),
        backgroundColor: Color.fromRGBO(11, 0, 98,0.8),
      ),
      body: Text("This is a quiz app"),
      backgroundColor: Color.fromRGBO(255, 255, 255, 0.8),
    ));
  }
}
