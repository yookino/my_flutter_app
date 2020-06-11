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
  var questions = [
    {
      'questionText': 'What\'s your favourite color.',
      'answers': ['Red', 'Green', 'Blue', 'White']
    },
    {
      'questionText': 'What\'s your favourite animal.',
      'answers': ['Cat', 'Dog', 'Rabbit', 'Lion']
    },
  ];

  void answerQuestion() {
    setState(() {
      questionIndex += 1;
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
            : Result(),
      ),
    );
  }
}
