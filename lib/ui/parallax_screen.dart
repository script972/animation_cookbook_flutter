import 'dart:async';

import 'package:flutter/material.dart';
import 'package:sensors/sensors.dart';

class ParallaxScreen extends StatefulWidget {
  @override
  _ParallaxScreenState createState() => _ParallaxScreenState();
}

class _ParallaxScreenState extends State<ParallaxScreen> {
  AccelerometerEvent acceleration;
  StreamSubscription<AccelerometerEvent> _streamSubscription;

  int bgMotionSensitivity = 4;

  @override
  void initState() {
    _streamSubscription =
        accelerometerEvents.listen((AccelerometerEvent event) {
      setState(() {
        acceleration = event;
      });
    });
    super.initState();
  }

  @override
  void dispose() {
    _streamSubscription.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Center(
        child: Stack(
          children: [
            AnimatedPositioned(
                duration: Duration(milliseconds: 500),
                top: acceleration.y * bgMotionSensitivity,
                bottom: acceleration.y * -bgMotionSensitivity,
                right: acceleration.x * -bgMotionSensitivity,
                left: acceleration.x * bgMotionSensitivity,
                child: Image.asset(
                  'assets/background.png',
                  height: double.infinity,
                  width: double.infinity,
                )),
            Container(
              width: double.infinity,
              height: double.infinity,
              child: Image.asset(
                'assets/earth.png',
                width: 280.0,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
