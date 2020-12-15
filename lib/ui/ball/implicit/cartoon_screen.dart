import 'package:flutter/material.dart';

class CartoonScreen extends StatefulWidget {
  @override
  _CartoonScreenState createState() => _CartoonScreenState();
}

class _CartoonScreenState extends State<CartoonScreen> {
  double sqrSize = 120;
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
              alignment: align,
              duration: Duration(seconds: 3),
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
            onPressed: () => () {},
            child: Text("Ball"),
          ),
        ],
      ),
    );
  }
}
