import 'package:app1/answer.dart';
import 'package:app1/question.dart';
import 'package:flutter/cupertino.dart';

// ignore: must_be_immutable
class Quiz extends StatelessWidget {
  List<Map<String, dynamic>> questions;
  var questionindex = 0;
  final Function answerQuestion;

  Quiz(
      {Key? key,
      required this.questions,
      required this.answerQuestion,
      required this.questionindex})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Question(questions[questionindex]['question']),
      // ... means we get tha values of list because map return list
      ...(questions[questionindex]['answers']).map((answer) {
        return Answer(() => {answerQuestion(answer["score"])}, answer["text"]);
      })
    ]);
  }
}
