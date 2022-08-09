import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  // const Result({Key key}) : super(key: key);

  final int resultScore;

  Result(this.resultScore);

  String get resultPhrase {
    var resultText = 'You did it';
    if (resultScore <= 8) {
      resultText = 'You are awesome and innocent !';
    } else if (resultScore <= 12) {
      resultText = 'Pretty likeable !';
    } else {
      resultText = 'You are so bad !';
    }
    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        resultPhrase,
        style: TextStyle(fontSize: 36, fontWeight: FontWeight.bold),
        textAlign: TextAlign.center,
      ),
    );
  }
}
