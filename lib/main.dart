import 'package:flutter/material.dart';

import 'quiz.dart';
import 'result.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int questionIndex = 0;
  int totalScore = 0;
  var questions = [
    {
      'questionText': 'What\'s your favourite color.',
      'answers': [
        {'text': 'Red', 'score': 3},
        {'text': 'Green', 'score': 2},
        {'text': 'Blue', 'score': 5},
        {'text': 'White', 'score': 6}
      ]
    },
    {
      'questionText': 'What\'s your favourite animal.',
      'answers': [
        {'text': 'Cat', 'score': 1},
        {'text': 'Dog', 'score': 3},
        {'text': 'Rabbit', 'score': 5},
        {'text': 'Lion', 'score': 9}
      ]
    },
  ];

  void answerQuestion(int score) {
    setState(() {
      totalScore += score;
      questionIndex += 1;
    });
  }

  void restartQuiz() {
    setState(() {
      totalScore = 0;
      questionIndex = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text('My App Bar')),
        body: questionIndex < questions.length
            ? Quiz(
                questions: questions,
                questionIndex: questionIndex,
                answerQuestion: answerQuestion,
              )
            : Result(
                totalScore,
                restartQuiz,
              ),
      ),
    );
  }
}
