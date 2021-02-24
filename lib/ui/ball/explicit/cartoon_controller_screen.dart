import 'package:flutter/material.dart';

class CartoonControllerScreen extends StatefulWidget {
  @override
  _CartoonControllerScreenState createState() =>
      _CartoonControllerScreenState();
}

class _CartoonControllerScreenState extends State<CartoonControllerScreen>
    with TickerProviderStateMixin {
  AnimationController positionController;
  AnimationController sizeController;

  @override
  void initState() {
    super.initState();
    positionController =
        AnimationController(value: this, duration: Duration(seconds: 2));
    positionController.addListener(() {
      setState(() {});
    });

    sizeController = AnimationController(
        vsync: this,
        duration: Duration(seconds: 3),
        lowerBound: 70.0,
        upperBound: 100.0);
    sizeController.addListener(() {
      setState(() {});
    });
  }

  void dispose() {
    positionController.dispose();
    sizeController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            width: sizeController.value,
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
    positionController.forward();
    positionController.addStatusListener((status) {
      if (status == AnimationStatus.completed) {
        sizeController.forward();
      }
    });
  }
}
