// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:flutter_complete_guide/result.dart';
import 'quiz.dart';
import 'result.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    debugShowCheckedModeBanner:
    false;

    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  var _questionIndex = 0;
  var _totalScore = 0;
  void _resetQuiz() {
    setState(() {
      _questionIndex = 0;
      _totalScore = 0;
    });
  }

  final _questions = const [
    {
      'questionText': 'A quoi est égale 1 octet ?',
      'answers': [
        {'text': '8 bytes', 'score': 0},
        {'text': '8 bits', 'score': 1},
      ]
    },
    {
      'questionText':
          'En quel unité mesure-t-on la fréquence(nombre de cycle par seconde) d\'microprocesseur ?',
      'answers': [
        {'text': 'gigaoctet', 'score': 0},
        {'text': 'gigahertz', 'score': 1},
        {'text': 'MIPS(million d\'instruction par seconde', 'score': 0},
      ]
    },
    {
      'questionText': 'Quel est le langage de programmation créer par google ?',
      'answers': [
        {'text': 'python', 'score': 0},
        {'text': 'Java', 'score': 0},
        {'text': 'Csharp', 'score': 0},
        {'text': 'Dart', 'score': 1}
      ]
    },
    {
      'questionText':
          'Comment appelle-t-on les connecteurs utiliséss pour brancher les câbles d\'un réseau informatique ?',
      'answers': [
        {'text': 'USB', 'score': 0},
        {'text': 'SATA', 'score': 0},
        {'text': 'RJ45', 'score': 1},
      ]
    },
    {
      'questionText': 'Que signifie l\'action "Drag and Drop" ?',
      'answers': [
        {'text': 'copier/coller', 'score': 0},
        {'text': 'couper/déposer', 'score': 0},
        {'text': 'glisser/déposer', 'score': 1},
      ]
    },
  ];
  void _answerQuestion(int score) {
    setState(() {
      _totalScore += score;
      _questionIndex += 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
            appBar: AppBar(
              title: Text('Quiz informatique'),
            ),
            body: _questionIndex < _questions.length
                ? Quiz(_questions, _questionIndex, _answerQuestion)
                : Result(_totalScore, _resetQuiz)));
  }
}
