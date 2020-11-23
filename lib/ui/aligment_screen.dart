import 'package:flutter/material.dart';

class AlignmentScreen extends StatefulWidget {
  @override
  _AlignmentScreenState createState() => _AlignmentScreenState();
}

class _AlignmentScreenState extends State<AlignmentScreen> {
  AlignmentGeometry _alignment = Alignment.topRight;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          Container(
            height: 120.0,
            width: double.infinity,
            color: Colors.blue[50],
            child: AnimatedAlign(
              alignment: _alignment,
              curve: Curves.ease,
              duration: Duration(seconds: 3),
              child: FlutterLogo(
                size: 60,
              ),
            ),
          ),
          FlatButton(
            onPressed: () => _changeAlignment(),
            child: Text(
              "Do it",
            ),
          )
        ],
      ),
    );
  }

  void _changeAlignment() {
    setState(() {
      _alignment = _alignment == Alignment.topRight
          ? Alignment.bottomLeft
          : Alignment.topRight;
    });
  }
}
