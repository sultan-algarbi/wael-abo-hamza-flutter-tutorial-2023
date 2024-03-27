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
        body: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: <Widget>[
              Container(height: 100, width: 100, color: Colors.red),
              Container(height: 100, width: 100, color: Colors.blue),
              Container(height: 100, width: 100, color: Colors.yellow),
              Container(height: 100, width: 100, color: Colors.orange),
              Container(height: 100, width: 100, color: Colors.green),
              Container(height: 100, width: 100, color: Colors.red),
              Container(height: 100, width: 100, color: Colors.blue),
              Container(height: 100, width: 100, color: Colors.yellow),
              Container(height: 100, width: 100, color: Colors.orange),
              Container(height: 100, width: 100, color: Colors.green),
            ],
          ),
          // scrollDirection: Axis.horizontal,
          // child: Row(
          //   mainAxisAlignment: MainAxisAlignment.start,
          //   crossAxisAlignment: CrossAxisAlignment.end,
          //   children: <Widget>[
          //     Container(height: 100, width: 100, color: Colors.red),
          //     Container(height: 100, width: 100, color: Colors.blue),
          //     Container(height: 100, width: 100, color: Colors.yellow),
          //     Container(height: 100, width: 100, color: Colors.orange),
          //     Container(height: 100, width: 100, color: Colors.green),
          //     Container(height: 100, width: 100, color: Colors.red),
          //     Container(height: 100, width: 100, color: Colors.blue),
          //     Container(height: 100, width: 100, color: Colors.yellow),
          //     Container(height: 100, width: 100, color: Colors.orange),
          //     Container(height: 100, width: 100, color: Colors.green),
          //   ],
          // ),
        ),
      ),
    );
  }
}
