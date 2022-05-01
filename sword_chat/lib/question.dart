// GNU AFFERO GENERAL PUBLIC LICENSE
//
// Version 3, 19 November 2007

import './main.dart';

import 'package:flutter/material.dart';

class Question extends StatelessWidget {
  final String questionText;

  const Question(this.questionText, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        width: double.infinity,
        margin: const EdgeInsets.all(15.5),
        child: Text(
          questionText,
          style: const TextStyle(fontSize: 25),
          textAlign: TextAlign.center,
        ));
  }
}
