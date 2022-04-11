import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class Result extends StatelessWidget {
  int totalescore = 0;
  final VoidCallback reset;
  Result(this.totalescore, this.reset, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // ignore: unnecessary_this

    final ButtonStyle raisedButtonStyle = ElevatedButton.styleFrom(
      onPrimary: Colors.black87,
      primary: Colors.grey[300],
      padding: const EdgeInsets.symmetric(horizontal: 16),
      shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(50))),
    );

    return Center(
      child: Column(
        // Vertically center the widget inside the column
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text("Your score is  : $totalescore",
              style: const TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              textAlign: TextAlign.center),
          ElevatedButton(
              style: raisedButtonStyle,
              child: const Text("Play Again !"),
              onPressed: reset)
        ],
      ),
    );
  }
}
