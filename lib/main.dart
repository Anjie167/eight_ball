import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blue[900],
          title: Text('Ask Me Anything'),
        ),
        body: BallPage(),
      ),
    );
  }
}

class BallPage extends StatefulWidget {

  @override
  _BallPageState createState() => _BallPageState();
}

class _BallPageState extends State<BallPage> {
  int ball = 1;
  void changeBall(){
    setState(() {
      ball = Random().nextInt(5)+1;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Expanded(
            child: Center(
              child: FlatButton(
                onPressed: (){
                  changeBall();
                },
                  child: Image.asset('images/ball$ball.png')),
            ),
          ),
        ],
      ),
      color: Colors.blue,
    );
  }
}
