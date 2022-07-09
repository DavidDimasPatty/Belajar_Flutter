import 'package:flutter/cupertino.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

import 'package:flutter/material.dart';

class Question extends StatelessWidget {
  final String questionIndex;

  Question(this.questionIndex);

  @override
  Widget build(BuildContext context) {
    return Container(
        width: double.infinity,
        child: Text(
          questionIndex,
          style: TextStyle(fontSize: 28),
          textAlign: TextAlign.center,
        ));
  }
}
