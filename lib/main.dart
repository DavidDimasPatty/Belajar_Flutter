import 'package:flutter/material.dart';

// void main() {
//   runApp(MyApp());
// }

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
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
        body: Column(
          children: [
            Text('Pilihan Menu'),
            RaisedButton(
              child: Text('Daftar Misa'),
              onPressed: printLog,
            ),
            RaisedButton(
              child: Text('Daftar Baptis'),
              onPressed: () => print('Choosen'),
            ),
            RaisedButton(
              child: Text('Daftar Komuni'),
              onPressed: printLog,
            ),
          ],
        ),
      ),
    );
  }
}
