// ignore_for_file: avoid_print

import 'package:flutter/material.dart';
import 'package:wael_abo_hamza_tutorial/homepage.dart';
import 'package:wael_abo_hamza_tutorial/aboutus.dart';
import 'package:wael_abo_hamza_tutorial/contactus.dart';

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
      home: const HomePage(),
      routes: {
        'home': (context) => const HomePage(),
        'aboutus': (context) => const AboutUs(),
        'contactus': (context) => const ContactUs(),
      },
    );
  }
}
