import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  bool _big = false;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text("AnimatedContainer")),
        body: Center(
          child: GestureDetector(
            onTap: () {
              setState(() {
                _big = !_big;
              });
            },
            child: AnimatedContainer(
              width: _big ? 200 : 100,
              height: _big ? 200 : 100,
              color: _big ? Colors.blue : Colors.red,
              duration: Duration(seconds: 1),
              curve: Curves.easeInOut,
            ),
          ),
        ),
      ),
    );
  }
}
