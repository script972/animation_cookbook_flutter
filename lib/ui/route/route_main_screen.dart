import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app/ui/route/details_screen.dart';

class RouteMainScreen extends StatefulWidget {
  RouteMainScreen({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _RouteMainScreenState createState() => _RouteMainScreenState();
}

class _RouteMainScreenState extends State<RouteMainScreen> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(top: 72.0),
        child: Column(
          children: [
            Hero(
                tag: 'HERO_TAG',
                child: Text(
                  'T',
                  style: TextStyle(fontSize: 14.0),
                )),
            Center(
              child: RaisedButton(
                child: Text('Push'),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => DetailsScreen()),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
