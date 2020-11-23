import 'package:flutter/material.dart';

class AnimatedContainerScreen extends StatefulWidget {
  @override
  _AnimatedContainerScreenState createState() =>
      _AnimatedContainerScreenState();
}

class _AnimatedContainerScreenState extends State<AnimatedContainerScreen> {
  final _myDuration = Duration(seconds: 1);
  var _myValue = Color(0xFF00BB00);
  var _myValueOld = Color(0xFF00BB00);
  final _myNewValue = Color(0xFF0000FF);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          Center(
            child: AnimatedContainer(
              color: _myValue,
              duration: _myDuration,
              child: SizedBox(
                width: 200.0,
                height: 200.0,
              ),
            ),
          ),
          updateStateButton()
        ],
      ),
    );
  }

  Align updateStateButton() {
    return Align(
      alignment: Alignment.bottomCenter,
      child: Padding(
        padding: EdgeInsets.only(bottom: 100),
        child: RaisedButton(
          child: Text('Update State'),
          onPressed: () {
            setState(() {
              if (_myValue == _myNewValue) {
                _myValue = _myValueOld;
              } else {
                _myValue = _myNewValue;
              }
            });
          },
        ),
      ),
    );
  }
}
