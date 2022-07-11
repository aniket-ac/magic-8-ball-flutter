import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(
    magicBall()
  );
}


class magicBall extends StatefulWidget {

  @override
  _magicBallState createState() => _magicBallState();
}

class _magicBallState extends State<magicBall> {
  int num= 1;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.indigoAccent,
          title: Text("Magic 8 ball"),
        ),
        backgroundColor: Colors.white,
        body: SafeArea(
          child: Center(
            child: Expanded(
                child: FlatButton(
                  onPressed:(){
                    setState(() {
                      num = Random().nextInt(5) + 1;
                    });
                  },
                  child: Image(
                    image: AssetImage("images/ball$num.png"),
                  ),
                ),
            ),
          ),
        ),
      ),
    );
  }
}

