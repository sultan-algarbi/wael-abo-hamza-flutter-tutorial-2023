import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Title'),
        ),
        body: const Text(
          "Sultan Algarbi",
          style: TextStyle(
            color: Colors.blue,
            // color: Color(0xFF0000FF),
            fontSize: 30.0,
            fontWeight: FontWeight.w800,
            backgroundColor: Colors.yellow,
          ),
        ),
      ),
    );
  }
}
