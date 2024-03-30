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
      home: Builder(builder: (context) {
        return Scaffold(
          appBar: AppBar(
            title: const Text('Home'),
            backgroundColor: Colors.blue,
            titleTextStyle: const TextStyle(
              color: Colors.white,
              fontSize: 20,
            ),
          ),
          body: Container(
            alignment: Alignment.center,
            padding: const EdgeInsets.all(10),
            child: MaterialButton(
              onPressed: () {
                showDialog(
                  barrierDismissible: false,
                  barrierColor: Colors.yellow.withOpacity(0.5),
                  context: context,
                  builder: (context) {
                    return AlertDialog(
                      icon: const Icon(Icons.warning),
                      buttonPadding: const EdgeInsets.all(20),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(50),
                      ),
                      title: const Text('Alert Dialog'),
                      content: const Text('This is an alert dialog'),
                      actions: [
                        TextButton(
                          onPressed: () {
                            print('Ok');
                          },
                          child: const Text('Ok'),
                        ),
                        TextButton(
                          onPressed: () {
                            Navigator.of(context).pop();
                          },
                          child: const Text('Cancel'),
                        ),
                      ],
                    );
                  },
                );
              },
              color: Colors.blue,
              textColor: Colors.white,
              child: const Text('Show Alert'),
            ),
          ),
        );
      }),
    );
  }
}
