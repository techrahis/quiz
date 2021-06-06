import 'package:flutter/material.dart';
import './question.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

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
    var questions = [
      'What\'s your favorite color?',
      'What\'s your favorite animal?',
      'What\'s your favorite animal?',
      'What\'s your favorite animal?',
    ];
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Q U I Z'),
        ),
        body: Column(
          children: [
            Question(
              questions[_questionIndex],
            ),
            RaisedButton(
              color: Colors.blue,
              textColor: Colors.white,
              child: Text(ans[0]['ans1']),
              onPressed: _answerQuestion,
            ),
            RaisedButton(
              color: Colors.blue,
              textColor: Colors.white,
              child: Text(ans[1]),
              onPressed: _answerQuestion,
            ),
            RaisedButton(
              color: Colors.blue,
              textColor: Colors.white,
              child: Text(ans[2]),
              onPressed: _answerQuestion,
            ),
            RaisedButton(
              color: Colors.blue,
              textColor: Colors.white,
              child: Text(ans[3]),
              onPressed: _answerQuestion,
            ),
          ],
        ),
      ),
    );
  }
}
