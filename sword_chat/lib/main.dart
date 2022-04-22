// GNU AFFERO GENERAL PUBLIC LICENSE
//
// Version 3, 19 November 2007

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
