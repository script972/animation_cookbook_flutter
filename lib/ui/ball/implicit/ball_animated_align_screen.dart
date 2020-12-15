import 'package:flutter/material.dart';

class BallAnimatedAlignScreen extends StatefulWidget {
  @override
  _BallAnimatedAlignScreenState createState() =>
      _BallAnimatedAlignScreenState();
}

class _BallAnimatedAlignScreenState extends State<BallAnimatedAlignScreen> {
  Alignment align = Alignment.center;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            width: 800.0,
            height: 500.0,
            child: AnimatedAlign(
              duration: Duration(seconds: 3),
              alignment: align,
              child: Image.asset(
                'assets/ball.png',
                width: 120.0,
                height: 120.0,
              ),
            ),
          ),
          //river
          Container(
            width: double.infinity,
            height: 50.0,
            color: Colors.blue,
            child: Center(child: Text('River')),
          ),
          FlatButton(
            onPressed: () => onButtonTap(),
            child: Text("Ball"),
          ),
        ],
      ),
    );
  }

  void onButtonTap() {
    setState(() {
      if (align == Alignment.bottomCenter) {
        align = Alignment.center;
      } else {
        align = Alignment.bottomCenter;
      }
    });
  }
}
