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
  TextEditingController username = TextEditingController();
  String? textVal;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: myAppBar(),
        body: Container(
          alignment: Alignment.center,
          padding: const EdgeInsets.all(30),
          child: Column(
            children: [
              // text field
              TextField(
                controller: username,
                onChanged: (value) {
                  setState(() {
                    textVal = "onChanged:\n$value";
                  });
                },
              ),
              // submit button
              Container(
                margin: const EdgeInsets.only(top: 20),
                child: MaterialButton(
                  onPressed: () {
                    setState(() {
                      textVal = "controller:\n${username.text}";
                    });
                  },
                  color: Colors.blue,
                  textColor: Colors.white,
                  child: const Text('Get Value'),
                ),
              ),
              // result
              Container(
                margin: const EdgeInsets.only(top: 50),
                color: Colors.yellow,
                width: double.infinity,
                height: 100,
                alignment: Alignment.center,
                child: Text(
                  textVal ?? '',
                  style: const TextStyle(
                    fontSize: 14,
                    color: Colors.black,
                  ),
                ),
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
