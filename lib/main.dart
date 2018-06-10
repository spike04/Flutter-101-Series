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
          child: Text('Hello World From Flutter 101'),
        ),
      ),
    );
  }
}