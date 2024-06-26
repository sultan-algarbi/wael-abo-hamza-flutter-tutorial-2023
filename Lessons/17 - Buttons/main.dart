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
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            print('Floating Action Button was Clicked');
          },
          backgroundColor: Colors.green,
          // child: const Text('Floating'),
          child: const Icon(Icons.add),
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.startFloat,
        appBar: const MyAppBar(),
        body: Container(
          padding: const EdgeInsets.all(10),
          child: Column(children: [
            MaterialButton(
              color: Colors.red,
              textColor: Colors.white,
              minWidth: 200,
              height: 100,
              onPressed: () {
                print('Material Button was Clicked');
              },
              child: const Text('Material Button'),
            ),
            IconButton(
              icon: const Icon(Icons.add_a_photo),
              tooltip: 'Icon Button',
              color: Colors.blue,
              iconSize: 100,
              onPressed: () {
                print('Icon Button was Clicked');
              },
            ),
          ]),
        ),
      ),
    );
  }
}
