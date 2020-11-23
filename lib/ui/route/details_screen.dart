import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class DetailsScreen extends StatefulWidget {
  @override
  _DetailsScreenState createState() => _DetailsScreenState();
}

class _DetailsScreenState extends State<DetailsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Details"),
            Hero(
                tag: 'HERO_TAG',
                child: Text(
                  'T',
                  style: TextStyle(fontSize: 42.0),
                )),
          ],
        ),
      ),
    );
  }
}
