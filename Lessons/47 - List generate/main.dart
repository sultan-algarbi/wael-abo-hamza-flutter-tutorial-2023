import 'package:flutter/material.dart';
import 'package:wael_abo_hamza_tutorial/data.dart';

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
        appBar: AppBar(
          title: const Text('Books List'),
          backgroundColor: Colors.blue,
        ),
        body: ListView(
          children: [
            ...List.generate(
              books.length,
              (index) {
                return ListTile(
                  title: Text('${index + 1}: ${books[index].title}'),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
