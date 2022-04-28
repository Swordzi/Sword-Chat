// GNU AFFERO GENERAL PUBLIC LICENSE
//
// Version 3, 19 November 2007

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

void main() => runApp(ChatApp());

class ChatApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return ChatAppState();
  }
}

class ChatAppState extends State<ChatApp> {
  bool pnumber = false;
  bool email = false;
  var questionIndex = 0;

  void answerQuestion() {
    questionIndex = questionIndex + 1;
    if (kDebugMode) {
      print(questionIndex);
    }
  }

  // Override is to tell flutter that we want to override the base widget.
  @override
  Widget build(BuildContext context) {
    var questions = [
      'Would you like to use an email?',
      'Would you like to use a phone number?',
      'Would you like to use a TOKEN?'
    ];
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('SwordChat!'),
        ),
        body: Column(
          children: [
            Text(questions[questionIndex]),
            ElevatedButton(
                child: const Text("Yes"),
                onPressed: () => {email = true, print(email)}),
            ElevatedButton(
                child: const Text('No'),
                onPressed: () => {email = false, print(email)}),
            ElevatedButton(
              child: const Text("Other"),
              onPressed: () => {print("Hi")},
            )
          ],
        ),
      ),
    );
  }
}
