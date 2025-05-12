import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: RotationExample());
  }
}

class RotationExample extends StatefulWidget {
  @override
  _RotationExampleState createState() => _RotationExampleState();
}

class _RotationExampleState extends State<RotationExample>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      duration: Duration(seconds: 2),
      vsync: this,
    )..repeat(); // continuous rotation
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Rotation Animation")),
      body: Center(
        child: RotationTransition(
          turns: _controller,
          child: Icon(Icons.refresh, size: 100, color: Colors.orange),
        ),
      ),
    );
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }
}
