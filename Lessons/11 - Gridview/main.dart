import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
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
  MyApp({super.key});

  final List employee = [
    {"name": "John", "age": 30},
    {"name": "Doe", "age": 25},
    {"name": "Smith", "age": 35},
    {"name": "Alex", "age": 40},
    {"name": "Ron", "age": 45},
    {"name": "Harry", "age": 50},
    {"name": "Potter", "age": 55},
    {"name": "Tom", "age": 60},
    {"name": "Jerry", "age": 65},
    {"name": "Mickey", "age": 70},
    {"name": "Mouse", "age": 75},
    {"name": "Donald", "age": 80},
    {"name": "Duck", "age": 85},
    {"name": "Minnie", "age": 90},
    {"name": "Goofy", "age": 95},
    {"name": "Pluto", "age": 100},
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: const MyAppBar(),
        body: Container(
          padding: const EdgeInsets.all(10),
          child: GridView.builder(
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 3,
              crossAxisSpacing: 10,
              mainAxisSpacing: 10,
            ),
            itemCount: employee.length,
            itemBuilder: (context, index) {
              return Container(
                color: Colors.red,
                child: ListTile(
                  title: Text("$index. ${employee[index]['name']}"),
                  subtitle: Text(employee[index]["age"].toString()),
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}
