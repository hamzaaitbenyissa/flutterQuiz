import 'package:app1/answer.dart';
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

  List<Map<String, dynamic>> questions = [
    {
      "question": "What is your favorite color ?",
      "answers": ["Red", "Green", "Yellow"]
    },
    {
      "question": "What is your favorite animal ?",
      "answers": ["Cat", "Dog", "Rabbit"]
    },
    {
      "question": "What is your favorite hobbie ?",
      "answers": ["Football", "Guitar", "Swimming"]
    },
  ];

  var _results = {
    'Key_1': "Value_1",
    'Key_2': "Value_2",
  };

  void _answerQuestion() {

    if(questionindex < questions.length-1){
    setState(() {
      questionindex = questionindex + 1;
    });
    print(questionindex);
    }

  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(
        title: const Text("Quiz App"),
        backgroundColor: const Color.fromRGBO(11, 0, 98, 0.8),
      ),
      body: Column(children: [
        Question(questions[questionindex]['question']),
        // ... means we get tha values of list because map return list
        ...(questions[questionindex]['answers'])
            .map((answer) => Answer(_answerQuestion, answer))
      ]),
      backgroundColor: Color.fromRGBO(255, 255, 255, 0.8),
    ));
  }
}
