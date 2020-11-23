import 'package:flutter/material.dart';
import 'package:flutter_app/ui/animated_cross_fade_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: AnimatedCrossFadeScreen(/*title: 'Flutter Demo Home Page'*/),
    );
  }
}
