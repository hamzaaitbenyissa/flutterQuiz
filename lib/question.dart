import 'package:flutter/material.dart';

// ignore: must_be_immutable
class Question extends StatelessWidget {
  String questionText;
  Question(this.questionText, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: const EdgeInsets.all(10),
      child: Text(questionText,
          style: const TextStyle(fontSize: 20,fontWeight:  FontWeight.bold), textAlign: TextAlign.center),
    );
  }
}
