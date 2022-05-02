// GNU AFFERO GENERAL PUBLIC LICENSE
//
// Version 3, 19 November 2007

import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final VoidCallback selectHandler;
  final String answerText;

  const Answer(this.selectHandler, this.answerText, {Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          primary: Colors.teal,
          onPrimary: Colors.white,
        ),
        child: Text(answerText),
        onPressed: selectHandler,
      ),
    );
  }
}
