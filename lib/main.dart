import 'package:first_app/question.dart';
import 'package:first_app/result.dart';
import 'package:flutter/material.dart';
import './quiz.dart';

// void main() {
//   runApp(MyApp());
// }

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _MyAppState();
  }
}

/////////////////////////////////////////////
//////////////////////////////////////////////
class _MyAppState extends State<MyApp> {
  var _questionIndex = 0;
  var _totalscore = 0;
  static const _questions = [
    {
      'questionText': 'Whats  your favorite color?',
      'answer': [
        {'text': 'Black', 'score': 5},
        {'text': 'Red', 'score': 3},
        {'text': 'Green', 'score': 2},
        {'text': 'White', 'score': 5}
      ],
    },
    {
      'questionText': 'Whats  your favorite Animal?',
      'answer': [
        {'text': 'Lion', 'score': 3},
        {'text': 'Snake', 'score': 2},
        {'text': 'Ant', 'score': 3},
        {'text': 'Wolf', 'score': 4}
      ],
    },
    {
      'questionText': 'Whats  your favorite Fruit?',
      'answer': [
        {'text': 'Manggo', 'score': 2},
        {'text': 'Durian', 'score': 1},
        {'text': 'Pineapple', 'score': 3},
        {'text': 'Apple', 'score': 4}
      ],
    }
  ];
  void _answerQuestion(int score) {
    setState(() {
      _totalscore += score;
      // if (_questionIndex >= questions.length - 1) {
      //   _questionIndex = 0;
      // } else {
      //   _questionIndex = _questionIndex + 1;
      // }
      _questionIndex = _questionIndex + 1;
    });

    print(_questionIndex);
  }

  void _resetQuiz() {
    setState(() {
      _questionIndex = 0;
      _totalscore = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    void printLog() {
      print('Button Pressed');
    }

    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: Text('Aplikasi Quiz'),
          ),
          body: _questionIndex < _questions.length
              ? Quiz(
                  answerQuestion: _answerQuestion,
                  questionIndex: _questionIndex,
                  questions: _questions,
                )
              // Column(
              //     children: [
              //       Question(
              //         questions[_questionIndex]['questionText'] as String,
              //       ),
              //       ...(questions[_questionIndex]['answer'] as List<String>)
              //           .map((answers) {
              //         return Answer(_answerQuestion, answers);
              //       }).toList()
              //       // Answer(_answerQuestion),
              //       // Answer(_answerQuestion),
              //       // Answer(_answerQuestion),
              //       // Answer(_answerQuestion),

              //       //     RaisedButton(
              //       //   child: Text('Daftar Misa'),
              //       //   onPressed: _answerQuestion,
              //       // ),
              //       // RaisedButton(
              //       //   child: Text('Daftar Baptis'),
              //       //   // onPressed: () => print('Choosen'),
              //       //   onPressed: _answerQuestion,
              //       // ),
              //       // RaisedButton(
              //       //   child: Text('Daftar Komuni'),
              //       //   onPressed: _answerQuestion,
              //       // ),
              //     ],
              //   )
              : Result(_totalscore, _resetQuiz)
          // Center(
          //     child: Text("You Did It!"),
          //   ),
          ),
    );
  }
}
