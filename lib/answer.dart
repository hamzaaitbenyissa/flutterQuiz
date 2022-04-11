import 'dart:ffi';

import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final VoidCallback pressHandler;
  final String AnswerText;
  Answer(this.pressHandler, this.AnswerText);

  // difference between const and final
  // final will be const once the first value is affected
  //ther is also a difference between const name= var [] and var name= const []

  @override
  Widget build(BuildContext context) {
    return Container(
        width: double.infinity,
        margin: EdgeInsets.all(6),
        child: RaisedButton(
            color: Colors.blue,
            child: Text(AnswerText),
            onPressed: () => {pressHandler()}));
  }
}
