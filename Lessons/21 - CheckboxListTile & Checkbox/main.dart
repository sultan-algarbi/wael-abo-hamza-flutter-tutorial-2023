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
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                'Select your country',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 20),
              for (var country in countries)
                CheckboxListTile(
                  title: Text(country.label),
                  value: country.status,
                  onChanged: (value) {
                    setState(() {
                      country.status = value!;
                    });
                  },
                ),
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
