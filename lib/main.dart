import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter 101',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Flutter 101'),
        ),
        body: Center(
          child: LikeToggler(),
        ),
      ),
    );
  }
}

class LikeToggler extends StatefulWidget {
  @override
  _LikeTogglerState createState() => _LikeTogglerState();
}

class _LikeTogglerState extends State<LikeToggler> {
  bool liked = false;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: <Widget>[
        Text(liked ? 'LIKED' : 'NOT LIKED'),
        Padding(
          padding: EdgeInsets.all(10.0),
        ),
        RaisedButton(
          child: Text('TOGGLE LIKE'),
          onPressed: () {
            this.setState(() {
              liked = !liked;
            });
          },
        )
      ],
    );
  }
}
