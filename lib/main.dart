import 'package:flutter/material.dart';
import 'question.dart';

// void main() {
//   runApp(BillionDollarApp());
// }

void main() => runApp(BillionDollarApp());

class BillionDollarApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _BillionDollarAppState();
  }
}

class _BillionDollarAppState extends State<BillionDollarApp> {
  var _questionIndex = 0;

  void _answerQuestion() {
    // print('Answer chosen');
    setState(() {
      _questionIndex = _questionIndex + 1;
    });
    print(_questionIndex);
  }

  @override
  Widget build(BuildContext context) {
    var questions = [
      'Do you like food?',
      'Do you like cars?',
    ];
    const backgroundColor = Color.fromARGB(252, 248, 245, 255);

    return MaterialApp(
      home: Scaffold(
        backgroundColor: backgroundColor,
        appBar: AppBar(title: const Text('Zakir\'s test app')),
        body: Column(
          children: [
            Question(questions[_questionIndex]),
            ElevatedButton(
              child: const Text('Yesssss'),
              onPressed: _answerQuestion,
            ),
            ElevatedButton(
              child: const Text('No!'),
              // onPressed: () => print("Another Answer chosen!"),
              onPressed: _answerQuestion,
            ),
            ElevatedButton(
              child: const Text('Skip this question'),
              // onPressed: () => print("Another Answer chosen!"),
              onPressed: _answerQuestion,
            ),
          ],
        ),
      ),
    );
  }
}
