// GNU AFFERO GENERAL PUBLIC LICENSE
//
// Version 3, 19 November 2007

import 'package:flutter/material.dart';
import './question.dart';
import './answer.dart';

class Setup extends StatelessWidget {
  final List<Map<String, Object>> questions;
  final int questionIndex;
  final VoidCallback answerQuestion;

  const Setup(
      {required this.questions,
      required this.answerQuestion,
      required this.questionIndex,
      Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Question(
          questions[questionIndex]['questionText'] as String,
        ),
        ...(questions[questionIndex]['answers'] as List<String>).map((answer) {
          return Answer(answerQuestion, answer);
        }).toList()
      ],
    );
  }
}
