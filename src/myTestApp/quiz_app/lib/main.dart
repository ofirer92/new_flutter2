import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  void answerQ() {
    print('clicked');
  }

  @override
  Widget build(BuildContext context) {
    var qoustion = ["whats is your favorite color", "what isyou pets name"];
    var qustion_num = 0;
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("walslaks"),
        ),
        body: Column(
          children: [
            Text(qoustion[qustion_num]),
            RaisedButton(
              child: Text('Answer 1'),
              onPressed: () {
                answerQ();
              },
            ),
            RaisedButton(
              child: Text('Answer 2'),
              onPressed: answerQ,
            ),
            RaisedButton(
              child: Text('Answer 3'),
              onPressed: answerQ,
            ),
          ],
        ),
      ),
    );
  }
}
