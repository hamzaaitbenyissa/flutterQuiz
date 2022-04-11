import 'package:app1/quiz.dart';
import 'package:app1/result.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() => MyAppstate();
}

class MyAppstate extends State<MyApp> {
  var _questionindex = 0;
  var _totalescore = 0;

  final List<Map<String, dynamic>> _questions = [
    {
      "question": "I'm very happy _____ in Morocco. I really miss being there.",
      "answers": [
        {"text": "to live", "score": 0},
        {"text": "to have lived ", "score": 2},
        {"text": "to be lived", "score": 0},
        {"text": "to be living", "score": 0},
      ]
    },
    {
      "question": "They didn't reach an agreement ______ their differences.",
      "answers": [
        {"text": "on account of", "score": 2},
        {"text": "due", "score": 0},
        {"text": "because", "score": 0},
        {"text": "owing", "score": 0},
      ]
    },
    {
      "question": "I wish I _____ those words. But now it's too late.",
      "answers": [
        {"text": "not having said", "score": 0},
        {"text": "have never said", "score": 0},
        {"text": "never said", "score": 0},
        {"text": "had never said", "score": 2},
      ]
    },
    {
      "question":
          "The woman, who has been missing for 10 days, is believed _____.",
      "answers": [
        {"text": "to be abducted", "score": 0},
        {"text": "to be abducting", "score": 0},
        {"text": "to have been abducted", "score": 2},
        {"text": "to have been abducting", "score": 0},
      ]
    },
    {
      "question":
          "She was working on her computer with her baby next to _____.",
      "answers": [
        {"text": "herself", "score": 0},
        {"text": "her", "score": 2},
        {"text": "her own", "score": 0},
        {"text": "hers", "score": 0},
      ]
    },
  ];

  void _answerQuestion(int qstscore) {
    _totalescore += qstscore;
    setState(() {
      _questionindex = _questionindex + 1;
    });
  }

  void reset() {
    setState(() {
      _questionindex = 0;
      _totalescore = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text("English Quiz"),
        backgroundColor: const Color.fromRGBO(255, 255, 255, 1),
        foregroundColor: const Color.fromRGBO(0, 0, 0, 1),
      ),
      body: _questionindex < _questions.length
          ? Quiz(
              questions: _questions,
              answerQuestion: _answerQuestion,
              questionindex: _questionindex)
          : Result(_totalescore, reset),
      backgroundColor: const Color.fromRGBO(255, 255, 255, 0.8),
    ));
  }
}
