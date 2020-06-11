import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final Function selectedHandler;
  final String text;

  Answer({this.selectedHandler, this.text});

  @override
  Widget build(BuildContext context) {

    return Container(
      width: double.infinity,
      margin: EdgeInsets.only(left: 10, right: 10),
      child: RaisedButton(
        color: Colors.blue,
        onPressed: selectedHandler,
        child: Text(
          text,
        ),
        textColor: Colors.white,
      ),
    );
  }
}
