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
          alignment: Alignment.center,
          child: Image.asset(
            'assets/images/google.png',
            width: 200,
            fit: BoxFit.cover,
          ),
          // Image.network('https://www.google.com/images/branding/googlelogo/1x/googlelogo_color_272x92dp.png'),
        ),
      ),
    );
  }
}
