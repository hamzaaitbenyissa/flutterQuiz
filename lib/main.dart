import 'package:app1/question.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return MyAppstate();
  }
}

class MyAppstate extends State<MyApp> {
  var questionindex = 0;
  void answerQuestion() {
    setState(() {
      questionindex = questionindex + 1;
    });
    print(questionindex);
  }

  var questions = [
    "What is your favorite color ?",
    "What is your favorite animal ?",
    "What is your favorite movie ?",
    "What is your favorite hobbie ?"
  ];
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(
        title: const Text("Quiz App"),
        backgroundColor: const Color.fromRGBO(11, 0, 98, 0.8),
      ),
      body: Column(children: [
        Question(questions[questionindex]),
        RaisedButton(child: const Text("Answer 1"), onPressed: answerQuestion),
        RaisedButton(child: const Text("Answer 2"), onPressed: answerQuestion),
        RaisedButton(child: const Text("Answer 3"), onPressed: answerQuestion),
      ]),
      backgroundColor: Color.fromRGBO(255, 255, 255, 0.8),
    ));
  }
}
