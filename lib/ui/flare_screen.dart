import 'package:flare_flutter/flare_actor.dart';
import 'package:flare_flutter/flare_controls.dart';
import 'package:flutter/material.dart';

class FlareScreen extends StatefulWidget {
  @override
  _FlareScreenState createState() => _FlareScreenState();
}

class _FlareScreenState extends State<FlareScreen> {
  FlareControls flareController;
  final String KEY_ANIMATION = "Untitled";

  @override
  void initState() {
    super.initState();
    flareController = FlareControls();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 120.0),
            child: Container(
              height: 260.0,
              child: FlareActor("assets/flare/fingerprint.flr",
                  alignment: Alignment.center,
                  fit: BoxFit.contain,
                  controller: this.flareController,
                  animation: KEY_ANIMATION),
            ),
          ),
          RaisedButton(
            child: Text('Restart'),
            onPressed: () {
              flareController.play("Untitled");
            },
          ),
        ],
      ),
    );
  }
}
