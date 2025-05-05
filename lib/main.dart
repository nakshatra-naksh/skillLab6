import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.amber,
          centerTitle: true,
          title: Text("click identifer"),
          leading: Icon(Icons.menu),
          actions: [Icon(Icons.logout)],
        ),
        body: ListView(
          scrollDirection: Axis.horizontal,
          children: [
            Container(
              padding: EdgeInsets.all(80.0), // Add padding around the ItemCount
              decoration: BoxDecoration(
                border: Border.all(
                  color: Colors.blue,
                  width: 2,
                ), // Add a border for styling
                borderRadius: BorderRadius.circular(
                  8.0,
                ), // Optional: rounded corners
              ),
              child: ItemCount(name: 'Apple', initialValue: 0, increment: true),
            ),
            SizedBox(width: 110),
            Container(
              padding: EdgeInsets.all(80.0), // Add padding around the ItemCount
              decoration: BoxDecoration(
                border: Border.all(
                  color: Colors.red,
                  width: 2,
                ), // Add a border for styling
                borderRadius: BorderRadius.circular(
                  8.0,
                ), // Optional: rounded corners
              ),
              child: ItemCount(
                name: 'Carbon',
                initialValue: 100,
                increment: false,
              ),
            ),
          ],
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
