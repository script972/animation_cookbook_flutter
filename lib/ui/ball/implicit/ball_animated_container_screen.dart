import 'package:flutter/material.dart';

class BallAnimatedContainerScreen extends StatefulWidget {
  @override
  _BallAnimatedContainerScreenState createState() =>
      _BallAnimatedContainerScreenState();
}

class _BallAnimatedContainerScreenState
    extends State<BallAnimatedContainerScreen> {
  double sqrSize = 120;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            width: 800.0,
            height: 500.0,
            child: Align(
              alignment: Alignment.bottomCenter,
              child: AnimatedContainer(
                width: sqrSize,
                height: sqrSize,
                duration: Duration(seconds: 3),
                child: Image.asset(
                  'assets/ball.png',
                ),
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
      if (sqrSize == 120.0) {
        sqrSize = 180.0;
      } else {
        sqrSize = 120;
      }
    });
  }
}
