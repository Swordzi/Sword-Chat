// GNU AFFERO GENERAL PUBLIC LICENSE
//
// Version 3, 19 November 2007

import './answer.dart';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:sword_chat/question.dart';

void main() => runApp(ChatApp());

class ChatApp extends StatefulWidget {
  const ChatApp({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return _ChatAppState();
  }
}

class _ChatAppState extends State<ChatApp> {
  bool pnumber = false;
  bool email = false;
  var _questionIndex = 0;

  void _answerQuestion() {
    if (_questionIndex < 2) {
      setState(() {
        _questionIndex = _questionIndex + 1;
      });
      if (kDebugMode) {
        print(_questionIndex);
      }
    } else {
      print("Too high number dummy");
    }
  }

  // Override is to tell flutter that we want to override the base widget.
  @override
  Widget build(BuildContext context) {
    var questions = [
      {
        'questionText': 'Would you like to use an email?',
        'answers': ['Yes', 'No', 'Hi'],
      },
      {
        'questionText': 'Would you like to use a phone number?',
        'answers': ['Yes', 'No', 'Hello'],
      },
      {
        'questionText': 'Would you like to use a TOKEN?',
        'answers': ['Yes', 'No', 'Hey'],
      },
    ];
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.teal,
          centerTitle: true,
          title: const Text(
            'Setup',
          ),
        ),
        body: Column(
          children: [
            Question(
              questions[_questionIndex]['questionText'] as String,
            ),
            ...(questions[_questionIndex]['answers']as List<String>).map((answer) {
              return Answer(_answerQuestion, answer);
            }).toList()

          ],
        ),
      ),
    );
  }
}
