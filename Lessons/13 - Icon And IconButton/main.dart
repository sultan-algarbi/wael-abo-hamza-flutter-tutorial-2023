// ignore_for_file: avoid_print

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyAppBar extends StatelessWidget implements PreferredSizeWidget {
  const MyAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: const Text(
        'Flutter Tutorial',
        style: TextStyle(color: Colors.white),
      ),
      backgroundColor: Colors.blue,
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: const MyAppBar(),
        body: Container(
            padding: const EdgeInsets.all(10),
            child: Column(
              children: [
                const Icon(
                  Icons.account_circle,
                  size: 100.0,
                  color: Colors.blue,
                ),
                IconButton(
                  onPressed: () {
                    print('Icon Button Pressed');
                  },
                  icon: const Icon(Icons.add),
                  iconSize: 150.0,
                  color: Colors.red,
                  tooltip: 'Add',
                ),
              ],
            )),
      ),
    );
  }
}
