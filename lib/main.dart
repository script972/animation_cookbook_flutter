import 'package:flutter/material.dart';
import 'package:flutter_app/ui/animated_container_screen.dart';

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
      home: AnimatedContainerScreen(/*title: 'Flutter Demo Home Page'*/),
    );
  }
}
