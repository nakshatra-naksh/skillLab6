//import 'package:counterapp/pages/firstpage.dart';

import 'package:flutter/material.dart';
import 'package:flutter_application_1/FirstPage.dart';
import 'package:flutter_application_1/SecondPage.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: FirstPage(),
      routes: {
        '/firstpage': (context) => FirstPage(),
        '/secondpage': (context) => SecondPage(),
      },
    );
  }
}
