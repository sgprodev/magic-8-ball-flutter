import 'dart:math';
import 'package:flutter/material.dart';

void main() => runApp(MagicBall());

class MagicBall extends StatefulWidget {
  @override
  _MagicBallState createState() => _MagicBallState();
}

class _MagicBallState extends State<MagicBall> {
  var magicNumber = 1;

  onMagicTouch() {
    setState(() {
      magicNumber = Random().nextInt(4) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            'Ask Me Anything',
            style: TextStyle(fontSize: 35),
          ),
          centerTitle: true,
          backgroundColor: Colors.blue[900],
        ),
        body: Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              RaisedButton(
                onPressed: onMagicTouch,
                child: Image.asset('images/ball$magicNumber.png'),
                color: Colors.blue,
              ),
            ],
          ),
          color: Colors.blue,
        ),
      ),
    );
  }
}
