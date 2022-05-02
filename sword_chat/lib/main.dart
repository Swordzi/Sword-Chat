// GNU AFFERO GENERAL PUBLIC LICENSE
//
// Version 3, 19 November 2007

// Importing other files to use their widgets.
import './setup.dart';
import './endscreen.dart';

// Importing foundation.dart for kDebugMode
// Importing material.dart for basic stuff
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

// Running the BUILD method below
void main() => runApp(const MyApp());

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  // Init variables
  bool pnumber = false;
  bool email = false;
  var _questionIndex = 0;

  // Method to change the value of _questionIndex to show other questions
  void _answerQuestion() {
    // Checking if value is 2 or below to not send values that are over the allowed amount.

    setState(() {
      _questionIndex = _questionIndex + 1;
    });
    if (kDebugMode) {
      print(_questionIndex);
    }
  }

  // Main build method here:
  // Override is to tell flutter that we want to override the base widget.
  @override
  Widget build(BuildContext context) {
    const _questions = [
      {
        'questionText': 'What would you like to use to authenticate yourself?',
        'answers': ['Phone Number', 'Email', 'Token'],
      },
      {
        'questionText': 'Which theme would you like?',
        'answers': ['Dark (Default)', 'Light', 'Custom'],
      },
      {
        'questionText':
            'Would you like to send private information to us to help improve the app?',
        'answers': ['No (Default)', 'Yes'],
      },
    ];
    // Return the main widget tree
    return MaterialApp(
      home: Scaffold(
        // TODO: Implement background colors
        appBar: AppBar(
          backgroundColor: Colors.teal,
          centerTitle: true,
          title: const Text(
            'Setup',
          ),
        ),
        // Checking if _questionIndex is less than the maximum amount of questions
        body: _questionIndex < _questions.length
            ? Setup(
                answerQuestion: _answerQuestion,
                questionIndex: _questionIndex,
                questions: _questions,
              )
            : const EndScreen(),
      ),
    );
  }
}
