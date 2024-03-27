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
  int i = 0;

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
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  IconButton(
                      icon: const Icon(Icons.add),
                      iconSize: 50,
                      onPressed: () {
                        setState(() {
                          i++;
                        });
                      }),
                  Container(
                    margin: const EdgeInsets.all(10),
                    height: 100,
                    width: 100,
                    alignment: Alignment.center,
                    decoration: myBoxDecoration(),
                    child: Text(
                      '$i',
                      textAlign: TextAlign.center,
                      style: const TextStyle(fontSize: 50),
                    ),
                  ),
                  IconButton(
                      icon: const Icon(Icons.remove),
                      iconSize: 50,
                      onPressed: () {
                        setState(() {
                          i--;
                        });
                      }),
                ],
              ),
              const SizedBox(height: 80),
              ElevatedButton(
                onPressed: () {
                  setState(() {
                    i = 0;
                  });
                },
                child: const Text('Reset'),
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
      color: Colors.amber,
      border: Border.all(
        color: Colors.white,
        width: 5,
      ),
      borderRadius: BorderRadius.circular(150),
      boxShadow: const [
        BoxShadow(
          color: Colors.grey,
          blurRadius: 10,
          offset: Offset(5, 5),
          spreadRadius: 5,
        ),
      ],
    );
  }
}
