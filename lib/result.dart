import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int resultScore;
  final VoidCallback resetQuiz;

  String get resultPhrase {
    String resultText = "";
    if (resultScore <= 8) {
      resultText = 'You are awesome and innocent!';
    } else if (resultScore <= 12) {
      resultText = 'Pretty likeable!';
    } else {
      resultText = 'You are so bad !';
    }
    return resultText;
  }

  Result(this.resultScore, this.resetQuiz);

  @override
  Widget build(BuildContext context) {
    print(this.resultScore);
    return Center(
        child: Column(
      children: <Widget>[
        Text(
          resultPhrase,
          style: TextStyle(
            fontSize: 36,
            fontWeight: FontWeight.bold,
          ),
          textAlign: TextAlign.center,
        ),
        RaisedButton(
          onPressed: resetQuiz,
          child: Text('Restart Quiz!'),
          color: Colors.blue,
          textColor: Colors.white,
        )
      ],
    ));
  }
}
