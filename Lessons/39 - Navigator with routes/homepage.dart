import 'package:flutter/material.dart';

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
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text('Home Page', style: TextStyle(fontSize: 40)),
            const SizedBox(height: 60),
            // ---------------------- Push ----------------------
            MaterialButton(
              onPressed: () {
                Navigator.of(context).pushNamed('aboutus');
              },
              color: Colors.blue,
              textColor: Colors.white,
              child: const Text('About Us (Push)'),
            ),
            MaterialButton(
              onPressed: () {
                Navigator.of(context).pushNamed('contactus');
              },
              color: Colors.blue,
              textColor: Colors.white,
              child: const Text('Contact Us (Push)'),
            ),
            // ---------------------- Push Replacement ----------------------
            MaterialButton(
              onPressed: () {
                Navigator.of(context).pushReplacementNamed('aboutus');
              },
              color: Colors.green,
              textColor: Colors.white,
              child: const Text('About Us (Push Replacement)'),
            ),
            MaterialButton(
              onPressed: () {
                Navigator.of(context).pushReplacementNamed('contactus');
              },
              color: Colors.green,
              textColor: Colors.white,
              child: const Text('Contact Us (Push Replacement)'),
            ),
            // ---------------------- Push & Remove ----------------------
            if (Navigator.canPop(context))
              MaterialButton(
                onPressed: () {
                  Navigator.of(context).pushNamedAndRemoveUntil(
                    'aboutus',
                    (route) => false,
                  );
                },
                color: Colors.red,
                textColor: Colors.white,
                child: const Text('About Us (Push & Remove)'),
              ),
            if (Navigator.canPop(context))
              MaterialButton(
                onPressed: () {
                  Navigator.of(context).pushNamedAndRemoveUntil(
                    'contactus',
                    (route) => false,
                  );
                },
                color: Colors.red,
                textColor: Colors.white,
                child: const Text('Contact Us (Push & Remove)'),
              ),
            // ---------------------- Pop ----------------------
            if (Navigator.canPop(context))
              MaterialButton(
                onPressed: () {
                  Navigator.of(context).pop();
                },
                color: Colors.black,
                textColor: Colors.white,
                child: const Text('Back (Pop)'),
              ),
          ],
        ),
      ),
    );
  }
}
