import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  return runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.yellowAccent,
        appBar: AppBar(
          title: Text(
            'Magic Ball',
            style: TextStyle(
              color: Colors.white60,
              fontSize: 25.0,
            ),
          ),
          backgroundColor: Colors.black87,
        ),
        body: MagicBall(),
      ),
    ),
  );
}

class MagicBall extends StatefulWidget {
  @override
  _MagicBallState createState() => _MagicBallState();
}

class _MagicBallState extends State<MagicBall> {
  int ballNumber = 1;

  void ballChange() {
    setState(() {
      ballNumber = Random().nextInt(5) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: FlatButton(
        child: Image.asset(
          'images/ball$ballNumber.png',
        ),
        onPressed: () {
          ballChange();
        },
      ),
    );
  }
}
