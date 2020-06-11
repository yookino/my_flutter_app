import 'package:flutter/material.dart';

import 'answer.dart';
import 'question.dart';

class Quiz extends StatelessWidget {
  const Quiz({
    @required this.questions,
    @required this.questionIndex,
    @required this.answerQuestion,
  });

  final List<Map<String, Object>> questions;
  final int questionIndex;
  final Function answerQuestion;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Question(
          questions[questionIndex]['questionText'],
        ),
        ...(questions[questionIndex]['answers'] as List<String>).map((anwser) {
          return Answer(
            selectedHandler: answerQuestion,
            text: anwser,
          );
        }),
      ],
    );
  }
}