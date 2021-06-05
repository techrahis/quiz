import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return MyAppState();
  }
}

class MyAppState extends State<MyApp> {
  var index = 0;

  void ansQ() {
    setState(() {
      index = index + 1;
    });
    print("Answer chosen!!");
  }

  @override
  Widget build(BuildContext context) {
    var questions = [
      'Whst\'s your favourite colour',
      'Whats\'s your favourite food',
    ];
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: Text('Q U I Z  App'),
          ),
          body: Column(
            children: [
              Text(questions.elementAt(index)),
              RaisedButton(
                child: Text("One"),
                onPressed: ansQ,
              ),
              RaisedButton(
                child: Text("One"),
                onPressed: ansQ,
              ),
              RaisedButton(
                child: Text("One"),
                onPressed: ansQ,
              ),
            ],
          )),
    );
  }
}
