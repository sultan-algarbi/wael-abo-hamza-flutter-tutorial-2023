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
  List<Country> countries = [
    Country(label: 'Yemen', value: 'yemen', status: false),
    Country(label: 'Saudi Arabia', value: 'saudi_arabia', status: false),
    Country(label: 'Egypt', value: 'egypt', status: false),
    Country(label: 'Kuwait', value: 'kuwait', status: false),
    Country(label: 'Qatar', value: 'qatar', status: false),
    Country(label: 'Bahrain', value: 'bahrain', status: false),
    Country(label: 'Oman', value: 'oman', status: false),
    Country(label: 'Jordan', value: 'jordan', status: false),
    Country(label: 'Iraq', value: 'iraq', status: false),
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: myAppBar(),
        body: Container(
          alignment: Alignment.center,
          padding: const EdgeInsets.all(10),
          child: Stack(
            alignment: Alignment.bottomLeft,
            // clipBehavior: Clip.none,
            children: [
              Container(width: 300, height: 300, color: Colors.red),
              Container(width: 200, height: 200, color: Colors.blue),
              Container(width: 100, height: 100, color: Colors.green),
              Positioned(
                bottom: 0,
                top: 0,
                left: 10,
                child: Container(width: 50, height: 50, color: Colors.yellow),
              ),
              Positioned(
                top: 10,
                right: 0,
                left: 0,
                child: Container(width: 50, height: 50, color: Colors.purple),
              ),
              Positioned(
                bottom: -100,
                right: 0,
                child: Container(width: 120, height: 120, color: Colors.orange),
              ),
              const Positioned(bottom: 20, left: 20, child: Text('Flutter')),
            ],
          ),
        ),
      ),
    );
  }

  PreferredSizeWidget myAppBar() {
    return AppBar(
      title: const Text(
        'Flutter Tutorial',
        style: TextStyle(color: Colors.white),
      ),
      backgroundColor: Colors.blue,
    );
  }
}

class Country {
  final String label;
  final String value;
  bool status;

  Country({
    required this.label,
    required this.value,
    required this.status,
  });
}
