import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text('My App'),
          centerTitle: true,
          backgroundColor: Colors.amber,
          leading: Icon(Icons.menu),
        ),
        body: Center(
          child: ElevatedButton(
            onPressed: () {
              print('elevated button clickrd');
            },
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.amber,
              shadowColor: Colors.deepOrange,
              foregroundColor: Colors.black,
              padding: EdgeInsets.all(30),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),
            ),
            child: Text('click me', style: TextStyle(fontSize: 20)),
          ),
        ),
      ),
    );
  }
}
