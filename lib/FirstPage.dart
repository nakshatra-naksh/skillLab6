//import 'package:counterapp/pages/secondpage.dart';
import 'package:flutter/material.dart';
//import 'package:flutter_application_1/SecondPage.dart';

class FirstPage extends StatelessWidget {
  const FirstPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('First Page'),
        backgroundColor: Colors.deepPurple,
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Navigator.pushNamed(context, '/secondpage');
          },
          child: Text('Go To Second Page'),
        ),
      ),
    );
  }
}
