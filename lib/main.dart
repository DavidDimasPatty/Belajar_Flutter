import 'package:first_app/question.dart';
import 'package:flutter/material.dart';
import './question.dart';

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

  void _answerQuestion() {
    setState(() {
      _questionIndex = _questionIndex + 1;
    });
    print(_questionIndex);
  }

  @override
  Widget build(BuildContext context) {
    void printLog() {
      print('Button Pressed');
    }

    var _questions = [
      "Whats  your favorite color?",
      "Whats  your favorite fruit?"
    ];

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Aplikasi Gereja'),
        ),
        body: Column(
          children: [
            Question(
              _questions[_questionIndex],
            ),
            RaisedButton(
              child: Text('Daftar Misa'),
              onPressed: _answerQuestion,
            ),
            RaisedButton(
              child: Text('Daftar Baptis'),
              // onPressed: () => print('Choosen'),
              onPressed: _answerQuestion,
            ),
            RaisedButton(
              child: Text('Daftar Komuni'),
              onPressed: _answerQuestion,
            ),
          ],
        ),
      ),
    );
  }
}
