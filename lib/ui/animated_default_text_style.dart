import 'package:flutter/material.dart';

class AnimatedDafaultTextStyle extends StatefulWidget {
  @override
  _AnimatedDafaultTextStyleState createState() =>
      _AnimatedDafaultTextStyleState();
}

class _AnimatedDafaultTextStyleState extends State<AnimatedDafaultTextStyle> {
  bool _first = true;
  String text = 'Itomych';
  double _fontSize = 60;
  Color _color = Colors.blue;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          AnimatedDefaultTextStyle(
            duration: const Duration(milliseconds: 300),
            curve: Curves.bounceInOut,
            style: TextStyle(
              fontSize: _fontSize,
              color: _color,
              fontWeight: FontWeight.bold,
            ),
            child: Text(
              text,
              textAlign: TextAlign.center,
            ),
          ),
          FlatButton(
            onPressed: () {
              setState(() {
                _fontSize = _first ? 90 : 60;
                _color = _first ? Colors.blue : Colors.red;
                text = !_first ? 'Itomych' : 'Welcome';
                _first = !_first;
              });
            },
            child: Text(
              "Do it",
            ),
          )
        ],
      ),
    );
  }
}
