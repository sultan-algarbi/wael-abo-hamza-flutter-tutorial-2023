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
            title: const Text(
              'Flutter Tutorial',
              style: TextStyle(color: Colors.white),
            ),
            backgroundColor: Colors.blue,
          ),
          body: Container(
            decoration: BoxDecoration(
              color: Colors.orange,
              border: Border.all(
                color: Colors.white,
                width: 3,
              ),
              borderRadius: BorderRadius.circular(150),
              boxShadow: const [
                BoxShadow(
                  color: Colors.grey,
                  blurRadius: 10,
                  offset: Offset(5, 5),
                  spreadRadius: 5,
                ),
              ],
            ),
            // color: Colors.grey, // can not be used with decoration
            margin: const EdgeInsets.all(20.0),
            padding: const EdgeInsets.all(20.0),
            alignment: Alignment.center,
            width: 500, // min(width, screen width)
            height: 2200, // min(height, screen height)
            child: const Text(
              "Sultan Algarbi",
              style: TextStyle(
                color: Colors.white,
                // color: Color(0xFF0000FF),
                fontSize: 30.0,
                fontWeight: FontWeight.w800,
                // backgroundColor: Colors.white,
              ),
            ),
          )),
    );
  }
}
