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
          key: scaffoldkey,
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
            child: Column(
              children: [
                // ------------------------ Bottom Sheet ------------------------
                MaterialButton(
                  onPressed: () {
                    scaffoldkey.currentState!.showBottomSheet(
                      (context) => Container(
                        alignment: Alignment.center,
                        padding: const EdgeInsets.all(20),
                        color: Colors.blue,
                        height: 100,
                        width: double.infinity,
                        child: const Text(
                          'Bottom Sheet content',
                          style: TextStyle(color: Colors.white, fontSize: 20),
                        ),
                      ),
                    );
                  },
                  color: Colors.blue,
                  textColor: Colors.white,
                  child: const Text('Show Bottom Sheet'),
                ),
                // ------------------------ SnackBar ------------------------
                MaterialButton(
                  onPressed: () {
                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(
                        content: const Text('SnackBar content'),
                        backgroundColor: Colors.red,
                        duration: const Duration(seconds: 2),
                        showCloseIcon: true,
                        action: SnackBarAction(
                          label: 'Test',
                          onPressed: () {
                            print('SnackBar action');
                          },
                        ),
                      ),
                    );
                  },
                  color: Colors.red,
                  textColor: Colors.white,
                  child: const Text('Show SnackBar'),
                ),
              ],
            ),
          ),
        );
      }),
    );
  }
}
