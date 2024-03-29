// ignore_for_file: avoid_print

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  PreferredSizeWidget myAppBar() {
    return AppBar(
      title: const Text('Flutter Tutorial'),
      centerTitle: true,
      titleTextStyle: const TextStyle(
        color: Colors.yellow,
        fontSize: 20,
        fontWeight: FontWeight.bold,
      ),
      backgroundColor: Colors.blue,
      leading: IconButton(
        icon: const Icon(Icons.menu),
        onPressed: () {
          print('Menu button clicked');
        },
      ),
      elevation: 20.0,
      actions: [
        IconButton(
          icon: const Icon(Icons.search),
          onPressed: () {
            print('Search button clicked');
          },
        ),
        IconButton(
          icon: const Icon(Icons.notifications),
          onPressed: () {
            print('Notification button clicked');
          },
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: myAppBar(),
        body: Container(
          alignment: Alignment.center,
          padding: const EdgeInsets.all(30),
          child: const Column(
            children: [
              Text(
                'App Body',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  BoxDecoration myBoxDecoration() {
    return BoxDecoration(
      color: const Color(0xffe6f0fa),
      borderRadius: BorderRadius.circular(5),
      border: Border.all(
        color: Colors.black,
        width: 2,
      ),
    );
  }
}
