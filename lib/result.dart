import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  int totalescore = 0;
  final VoidCallback reset;
  Result(this.totalescore,this.reset);

  @override
  Widget build(BuildContext context) {
    // ignore: unnecessary_this
    return Center(
      child: Column(
        children: [
          Text("Your score is  : ${totalescore}",
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              textAlign: TextAlign.center),
          RaisedButton(
              color: Colors.blue,
              child: Text("Play Again!"),
              onPressed: reset )
        ],
      ),
    );
  }
}
