import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: const [
              ItemCount(name: 'Apple', initialValue: 0, increment: true),
              SizedBox(height: 20),
              ItemCount(name: 'Carbon', initialValue: 100, increment: false),
            ],
          ),
        ),
      ),
    );
  }
}

class ItemCount extends StatefulWidget {
  final String name;
  final int initialValue;
  final bool increment;

  const ItemCount({
    super.key,
    required this.name,
    required this.initialValue,
    required this.increment,
  });

  @override
  _ItemCountState createState() => _ItemCountState();
}

class _ItemCountState extends State<ItemCount> {
  late int count;

  @override
  void initState() {
    super.initState();
    count = widget.initialValue;
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        setState(() {
          widget.increment ? count++ : count--;
        });
      },
      child: Text('${widget.name}: $count'),
    );
  }
}
