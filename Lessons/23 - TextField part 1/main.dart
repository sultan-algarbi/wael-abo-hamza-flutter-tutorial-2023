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
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: myAppBar(),
        body: Container(
          alignment: Alignment.center,
          padding: const EdgeInsets.all(10),
          child: const Column(
            children: [
              TextField(
                enableSuggestions: true,
                decoration: InputDecoration(
                  hintText: 'Enter your name',
                  labelText: 'Name',
                  prefix: Icon(Icons.person, color: Colors.blue),
                  suffix: Icon(Icons.check_circle, color: Colors.green),
                  border: OutlineInputBorder(),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.blue, width: 2),
                  ),
                ),
              ),
              SizedBox(height: 20),
              TextField(
                decoration: InputDecoration(
                  prefixText: 'Email: ',
                  labelText: 'Email',
                  prefixStyle: TextStyle(color: Colors.blue),
                  border: OutlineInputBorder(),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.blue, width: 2),
                  ),
                ),
              ),
              SizedBox(height: 20),
              TextField(
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                  hintText: 'Enter your age',
                  labelText: 'Age',
                  filled: true,
                  fillColor: Color.fromARGB(255, 234, 234, 234),
                  border: OutlineInputBorder(),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.blue, width: 2),
                  ),
                ),
              )
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

  BoxDecoration myBoxDecoration() {
    return BoxDecoration(
      color: const Color(0xffe6f0fa),
      borderRadius: BorderRadius.circular(5),
      border: Border.all(
        color: Colors.black,
        width: 2,
      ),
    );
  }
}
