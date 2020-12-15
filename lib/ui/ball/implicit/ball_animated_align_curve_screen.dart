import 'package:flutter/material.dart';

class BallAnimatedAlignCurveScreen extends StatefulWidget {
  @override
  _BallAnimatedAlignCurveScreenState createState() =>
      _BallAnimatedAlignCurveScreenState();
}

class _BallAnimatedAlignCurveScreenState
    extends State<BallAnimatedAlignCurveScreen> {
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
              curve: Curves.bounceIn,
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
            color: Colors.green,
            child: Center(child: Text('Land')),
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
