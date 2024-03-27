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
  bool status1 = true;
  bool status2 = true;

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
              Container(
                decoration: myBoxDecoration(),
                width: double.infinity,
                height: 100,
                child: Switch(
                  activeColor: Colors.blue,
                  value: status1,
                  onChanged: (val) {
                    setState(() {
                      status1 = val;
                    });
                  },
                ),
              ),
              Container(
                decoration: myBoxDecoration(),
                width: double.infinity,
                height: 100,
                margin: const EdgeInsets.only(top: 10),
                child: SwitchListTile(
                  activeColor: Colors.blue,
                  title: const Text('Switch List Tile'),
                  subtitle: const Text('This is a subtitle'),
                  value: status2,
                  onChanged: (val) {
                    setState(() {
                      status2 = val;
                    });
                  },
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
