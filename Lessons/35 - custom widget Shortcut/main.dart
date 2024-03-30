// ignore_for_file: avoid_print

import 'package:flutter/material.dart';
import 'package:wael_abo_hamza_tutorial/customcard.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> with SingleTickerProviderStateMixin {
  GlobalKey<ScaffoldState> scaffoldkey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        key: scaffoldkey,
        appBar: AppBar(
          title: const Text('Flutter Tutorial'),
          backgroundColor: Colors.blue,
          titleTextStyle: const TextStyle(
            color: Colors.white,
            fontSize: 20,
          ),
        ),
        body: Container(
          alignment: Alignment.center,
          padding: const EdgeInsets.all(10),
          child: const Column(
            children: [
              CustomListTile(
                  name: 'User1',
                  email: 'examole1@gmail.com',
                  date: '2024-01-25',
                  image: 'google.png'),
              CustomListTile(
                  name: 'User2',
                  email: 'examole2@gmail.com',
                  date: '2024-01-25',
                  image: 'google.png'),
              CustomListTile(
                  name: 'User3',
                  email: 'examole3@gmail.com',
                  date: '2024-01-25',
                  image: 'google.png'),
            ],
          ),
        ),
      ),
    );
  }
}
