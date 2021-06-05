import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  void ansQ() {
    print("Answer chosen!!");
  }

  @override
  Widget build(BuildContext context) {
    var q = ["you pressed one", "you pressed two", "you pressed three"];
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: Text('Calculator'),
          ),
          body: Column(
            children: [
              Text("Press any one of them"),
              RaisedButton(
                child: Text("One"),
                onPressed: () => print("Answer 1 chosen!!"),
              ),
              RaisedButton(
                child: Text("One"),
                onPressed: () => print("Answer 2 chosen!!"),
              ),
              RaisedButton(
                child: Text("One"),
                onPressed: () => print("Answer 3 chosen!!"),
              ),
            ],
          )),
    );
  }
}
