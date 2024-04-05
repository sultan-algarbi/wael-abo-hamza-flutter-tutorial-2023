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

class _MyAppState extends State<MyApp> with SingleTickerProviderStateMixin {
  GlobalKey<ScaffoldState> scaffoldkey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          key: scaffoldkey,
          appBar: AppBar(
            title: const Text('Wael Abo Hamza Tutorial'),
            backgroundColor: Colors.blue,
            actions: [
              PopupMenuButton(
                icon: const Icon(Icons.more_vert),
                iconColor: Colors.white,
                iconSize: 30,
                itemBuilder: (context) {
                  return const [
                    PopupMenuItem(
                      value: 'first value',
                      child: Row(
                        children: [
                          Icon(Icons.car_crash),
                          SizedBox(width: 10),
                          Text('One'),
                        ],
                      ),
                    ),
                    PopupMenuItem(
                      value: 'second value',
                      child: Text('Two'),
                    ),
                    PopupMenuItem(
                      value: 'third value',
                      child: Text('Three'),
                    ),
                  ];
                },
                onSelected: (value) {
                  print(value);
                },
                onOpened: () {
                  print('opened');
                },
                onCanceled: () {
                  print('canceled');
                },
              )
            ],
          ),
          body: const Center(
            child: Text('Welcome to Wael Abo Hamza Tutorial'),
          )),
    );
  }
}
