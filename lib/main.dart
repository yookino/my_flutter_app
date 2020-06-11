import 'package:flutter/material.dart';
import '../question.dart';
import '../answer.dart';

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
            ? Quiz(questions: questions, questionIndex: questionIndex)
            : Center(child: Text('End Quiz')),
      ),
    );
  }
}

class Quiz extends StatelessWidget {
  const Quiz({
    Key key,
    @required this.questions,
    @required this.questionIndex,
  }) : super(key: key);

  final List<Map<String, Object>> questions;
  final int questionIndex;

  @override
  Widget build(BuildContext context) {
    return Column(
        children: [
          Question(
            questions[questionIndex]['questionText'],
          ),
//                  ...(questions[questionIndex]['answers'] as List<String>)
//                      .map((anwser) {
//                    return Answer(
//                      selectedHandler: answerQuestion,
//                      text: anwser,
//                    );
//                  }),
        ],
      );
  }
}
