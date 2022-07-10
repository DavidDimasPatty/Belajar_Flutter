import 'package:first_app/question.dart';
import 'package:flutter/material.dart';
import './question.dart';
import './answer.dart';

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
  static const questions = [
    {
      'questionText': 'Whats  your favorite color?',
      'answer': ['Black', 'Red', 'Green', 'White'],
    },
    {
      'questionText': 'Whats  your favorite Animal?',
      'answer': ['Snake', 'Lion', 'Tiger', 'Wolf'],
    },
    {
      'questionText': 'Whats  your favorite Fruit?',
      'answer': ['Orange', 'Manggo', 'Durian', 'Apple'],
    }
  ];
  void _answerQuestion() {
    setState(() {
      // if (_questionIndex >= questions.length - 1) {
      //   _questionIndex = 0;
      // } else {
      //   _questionIndex = _questionIndex + 1;
      // }
      _questionIndex = _questionIndex + 1;
    });

    print(_questionIndex);
  }

  @override
  Widget build(BuildContext context) {
    void printLog() {
      print('Button Pressed');
    }

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Aplikasi Gereja'),
        ),
        body: _questionIndex < questions.length
            ? Column(
                children: [
                  Question(
                    questions[_questionIndex]['questionText'] as String,
                  ),
                  ...(questions[_questionIndex]['answer'] as List<String>)
                      .map((answers) {
                    return Answer(_answerQuestion, answers);
                  }).toList()
                  // Answer(_answerQuestion),
                  // Answer(_answerQuestion),
                  // Answer(_answerQuestion),
                  // Answer(_answerQuestion),

                  //     RaisedButton(
                  //   child: Text('Daftar Misa'),
                  //   onPressed: _answerQuestion,
                  // ),
                  // RaisedButton(
                  //   child: Text('Daftar Baptis'),
                  //   // onPressed: () => print('Choosen'),
                  //   onPressed: _answerQuestion,
                  // ),
                  // RaisedButton(
                  //   child: Text('Daftar Komuni'),
                  //   onPressed: _answerQuestion,
                  // ),
                ],
              )
            : Center(
                child: Text("You Did It!"),
              ),
      ),
    );
  }
}
