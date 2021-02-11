import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return MyAppState();
  }
}

class MyAppState extends State<MyApp> {
  var qustion_num = 0;

  void answerQ() {
    setState(() {
      qustion_num++;
    });
    print('clicked');
  }

  @override
  Widget build(BuildContext context) {
    var qoustion = ["whats is your favorite color", "what isyou pets name"];
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("1st App"),
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
