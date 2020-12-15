import 'package:flutter/material.dart';

class BallAnimatedAlignControllerScreen extends StatefulWidget {
  @override
  _BallAnimatedAlignControllerScreenState createState() =>
      _BallAnimatedAlignControllerScreenState();
}

class _BallAnimatedAlignControllerScreenState
    extends State<BallAnimatedAlignControllerScreen>
    with SingleTickerProviderStateMixin {
  AnimationController positionController;

  @override
  void initState() {
    super.initState();
    positionController =
        AnimationController(vsync: this, duration: Duration(seconds: 2));
    positionController.addListener(() {
      setState(() {});
    });
  }

  void dispose() {
    positionController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            width: 80.0,
            height: 500.0,
            child: SlideTransition(
              position: Tween<Offset>(begin: Offset.zero, end: Offset(0, 0.42))
                  .animate(positionController),
              child: Image.asset(
                'assets/ball.png',
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
    if (positionController.status == AnimationStatus.completed) {
      positionController.reverse();
    } else {
      positionController.forward();
    }
  }
}
