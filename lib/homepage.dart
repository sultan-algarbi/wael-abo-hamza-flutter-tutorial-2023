import 'package:flutter/material.dart';
import 'package:wael_abo_hamza_tutorial/aboutus.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
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
        child: Column(
          children: [
            const Text('Home Page'),
            MaterialButton(
              onPressed: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => const AboutUs(),
                  ),
                );
              },
              color: Colors.blue,
              textColor: Colors.white,
              child: const Text('Move to About Us Page'),
            ),
          ],
        ),
      ),
    );
  }
}
