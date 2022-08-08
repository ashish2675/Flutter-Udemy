import 'package:flutter/material.dart';

import './quiz.dart';
import './result.dart';

// void main() {
//   runApp(MyApp());
// }

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  final _questions = [
    {
      'questionText': 'Whats\'s your favorite color?',
      'answers': ['Red', 'Blue', 'Orange', 'Purple'],
    },
    {
      'questionText': 'What\'s your favorite animal?',
      'answers': ['Bear', 'Raindear', 'Horse', 'Cat'],
    },
    {
      'questionText': 'Who\'s your favorite instructor?',
      'answers': ['Akhand', 'Chaman', 'Suman', 'Aman'],
    },
  ];
  var _questionIndex = 0;

  void _answerQuestion() {
    // var aBool = true;
    // aBool = false;
    setState(() {
      _questionIndex = _questionIndex + 1;
    });
    print(_questionIndex);
    if (_questionIndex < _questions.length) {
      print('We have more questions');
    } else {
      print('No more questions!');
    }
  }

  @override
  Widget build(BuildContext context) {
    // questions = []; // does not work if question is a const

    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(
        title: Text('My First App'),
      ),
      body: _questionIndex < _questions.length
          ? Quiz(
              answerQuestion: _answerQuestion,
              questionIndex: _questionIndex,
              questions: _questions,
            )
          : Result(),
    ));
  }
}
