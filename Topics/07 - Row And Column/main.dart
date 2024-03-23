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
          width: 500,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: <Widget>[
              const Text('Hello World!'),
              Container(
                width: 100,
                height: 100,
                color: Colors.red,
              ),
              Image.asset('assets/images/google.png'),
            ],
          ),
          // child: Row(
          //   mainAxisAlignment: MainAxisAlignment.start,
          //   crossAxisAlignment: CrossAxisAlignment.end,
          //   children: <Widget>[
          //     const Text('Hello World!'),
          //     Container(
          //       width: 100,
          //       height: 100,
          //       color: Colors.red,
          //     ),
          //     Image.asset('assets/images/google.png'),
          //   ],
          // ),
        ),
      ),
    );
  }
}
