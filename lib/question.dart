import 'package:flutter/material.dart';

class Question extends StatelessWidget {
  final String questionText;

  Question(this.questionText);

  @override
  Widget build(BuildContext context) {
    return Container(
        width: double.infinity,
        margin: EdgeInsets.all(10),
        child: Text(
          questionText,
          textAlign: TextAlign.center,
          style: const TextStyle(
              fontSize: 28, fontFamily: 'Georgia', fontWeight: FontWeight.w600),
        ));
  }
}
