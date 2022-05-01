// GNU AFFERO GENERAL PUBLIC LICENSE
//
// Version 3, 19 November 2007

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

void main() => runApp(ChatApp());

class ChatApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _ChatAppState();
  }
}

class _ChatAppState extends State<ChatApp> {
  bool pnumber = false;
  bool email = false;
  var _questionIndex = 0;

  void answerQuestion() {
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
      'Would you like to use an email?',
      'Would you like to use a phone number?',
      'Would you like to use a TOKEN?',
    ];
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('SwordChat!'),
        ),
        body: Column(
          children: [
            Text(questions[_questionIndex]),
            ElevatedButton(
              child: const Text("Yes"),
              onPressed: answerQuestion,
            ),
            ElevatedButton(
              child: const Text('No'),
              onPressed: answerQuestion,
            ),
            ElevatedButton(
              child: const Text("Other"),
              onPressed: () => {
                answerQuestion,
                print("Hi"),
              },
            )
          ],
        ),
      ),
    );
  }
}
