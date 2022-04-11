import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final VoidCallback pressHandler;
  // ignore: non_constant_identifier_names
  final String AnswerText;
  Answer(this.pressHandler, this.AnswerText, {Key? key}) : super(key: key);

  // difference between const and final
  // final will be const once the first value is affected
  //ther is also a difference between const name= var [] and var name= const []

  final ButtonStyle raisedButtonStyle = ElevatedButton.styleFrom(
    onPrimary: Colors.black87,
    primary: Colors.grey[300],
    padding: const EdgeInsets.symmetric(horizontal: 16),
    shape: const RoundedRectangleBorder(
      borderRadius: BorderRadius.all(Radius.circular(100)),
    ),
  );

  @override
  Widget build(BuildContext context) {
    return Container(
        width: double.infinity,
        margin:const  EdgeInsets.all(6),
        child: ElevatedButton(
            style: raisedButtonStyle,
            child: Text(AnswerText),
            onPressed: () => {pressHandler()}));
  }
}
