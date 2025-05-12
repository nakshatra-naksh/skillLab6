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
          child: Image.network(
            'https://wallpapers.com/images/high/bmw-m8-4k-kzz9gak81hmvbmk9.webp',
          ),
        ),
      ),
    );
  }
}
