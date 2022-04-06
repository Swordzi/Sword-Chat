// BSD 3-Clause License
//
// Copyright (c) 2022, Iiro Polso
// All rights reserved.

import 'package:flutter/material.dart';

void main() => runApp(ChatApp());

class ChatApp extends StatelessWidget {
  bool pnumber = false;
  bool email = false;
  var questionIndex = 0;

  void answerQuestion() {
    questionIndex = questionIndex + 1;
    print(questionIndex);
  }

  // Override is to tell flutter that we want to override the base widget.
  @override
  Widget build(BuildContext context) {
    var questions = ['Would you like to use an email?', ''];
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('SwordChat!'),
        ),
        body: Column(
          children: [
            Text(questions[questionIndex]),
            ElevatedButton(
                child: Text("Yes"),
                onPressed: () => {email = true, print(email)}),
            ElevatedButton(
              child: Text('No'),
              onPressed: () => {email = false, print(email)},
            ),
          ],
        ),
      ),
    );
  }
}
