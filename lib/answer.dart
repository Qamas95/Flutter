import 'package:flutter/material.dart';



class Answer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: RaisedButton(
              child: Text('Ansewr 1'),
              color: Colors.blue,
              onPressed: null,
            ),
    );
  }
}