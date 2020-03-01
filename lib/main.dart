import 'package:flutter/material.dart';

// void main() {
//   runApp(MyApp());
// }

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {

  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return MyAppState();
  }
}

class MyAppState extends State<MyApp> {


  var questionIndex = 0;

  void answerQuestion() {
    setState(() {
        questionIndex = questionIndex + 1;
    });
    print(questionIndex);
  }

  @override
  Widget build(BuildContext context) {
    var questions = [
      'What\'s your favourite color?',
      'What\'s your favourite animal?',
    ];
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('My first App'),
        ),
        body: Column(
          children: [
            Text(
              questions[questionIndex]
              ),
            RaisedButton(
              child: Text('Ansewr 1'),
              onPressed: answerQuestion,
            ),
            RaisedButton(
              child: Text('Ansewr 2'),
              onPressed: () => print('Answer 2 chosen!'),
            ),
            RaisedButton(
              child: Text('Ansewr 3'),
              onPressed: () {
                // ... code
                print('Answer 3 chosen');
              },
            ),
          ],
        ),
      ),
    );
  }
}
