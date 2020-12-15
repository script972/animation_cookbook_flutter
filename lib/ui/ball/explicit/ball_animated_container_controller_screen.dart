import 'package:flutter/material.dart';

class BallAnimatedContainerControllerScreen extends StatefulWidget {
  @override
  _BallAnimatedAlignScreenState createState() =>
      _BallAnimatedAlignScreenState();
}

class _BallAnimatedAlignScreenState
    extends State<BallAnimatedContainerControllerScreen>
    with SingleTickerProviderStateMixin {
  AnimationController sizeController;

  @override
  void initState() {
    super.initState();
    sizeController = AnimationController(
        vsync: this,
        duration: Duration(seconds: 3),
        lowerBound: 50.0,
        upperBound: 120.0);
    sizeController.addListener(() {
      setState(() {});
      debugPrint("sizeController>>>>${sizeController.value}");
    });
  }

  void dispose() {
    sizeController.dispose();
    super.dispose();
  }

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
              child: Image.asset(
                'assets/ball.png',
                width: sizeController.value,
                height: sizeController.value,
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
    if (sizeController.status == AnimationStatus.completed) {
      sizeController.reverse();
    } else {
      sizeController.forward();
    }
  }
}
