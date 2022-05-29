// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int totalScore;
  final VoidCallback resetHandler;
  Result(this.totalScore, this.resetHandler);

  String get resultPhrase {
    String resultText;
    if (totalScore <= 2) {
      resultText = "Mauvais" + totalScore.toString() + "/5";
    } else {
      resultText = "Bravo" + totalScore.toString() + "/5";
    }
    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
        child: Column(children: <Widget>[
      Text(
        resultPhrase,
        style: TextStyle(fontSize: 31, fontWeight: FontWeight.bold),
      ),
      FlatButton(
          onPressed: resetHandler,
          child: Text(
            'Recommencer le quiz',
            style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
          ))
    ]));
  }
}
