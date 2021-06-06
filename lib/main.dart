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
  var i = 0, j = 1, k = 2, l = 3;

  void _answerQuestion() {
    setState(() {
      _questionIndex = _questionIndex + 1;
      i = i + 4;
      j = j + 4;
      k = k + 4;
      l = l + 4;
    });
    print(_questionIndex);
  }

  @override
  Widget build(BuildContext context) {
    var questions = [
      'What\'s your favorite color?',
      'What\'s your favorite flower?',
      'What\'s your favorite movie genre?',
      'What\'s your favorite game genre?',
    ];
    var a1 = [
      'Black',
      'White',
      'Blue',
      'Yellow',
      'Rose',
      'Daisy',
      'Lily',
      'Orchid',
      'Action',
      'Adventure',
      'Romance',
      'Story',
      'Action',
      'Racing',
      'Rockstar',
      'Adventure',
    ];

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('K N O W   M E'),
        ),
        body: Column(
          children: [
            (_questionIndex<=3) ? Question(questions[_questionIndex]) : Question("ThankYou"), 
            
            if(l<=15)
            RaisedButton(
              color: Colors.blue,
              textColor: Colors.white,
              child: Text(a1[i]),
              onPressed: _answerQuestion,
            ),  


            if(l<=15)
            RaisedButton(
              color: Colors.blue,
              textColor: Colors.white,
              child: Text(a1[j]),
              onPressed: _answerQuestion,
            ),

            if(l<=15)
            RaisedButton(
              color: Colors.blue,
              textColor: Colors.white,
              child: Text(a1[k]),
              onPressed: _answerQuestion,
            ),

            if(l<=15)
            RaisedButton(
              color: Colors.blue,
              textColor: Colors.white,
              child: Text(a1[l]),
              onPressed: _answerQuestion,
            ),
          ],
        ),
      ),
    );
  }
}
