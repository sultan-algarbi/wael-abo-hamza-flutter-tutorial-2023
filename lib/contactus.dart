import 'package:flutter/material.dart';

class ContactUs extends StatefulWidget {
  const ContactUs({super.key});

  @override
  State<ContactUs> createState() => _ContactUsState();
}

class _ContactUsState extends State<ContactUs> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Contact Us'),
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
            const Text('Contact Us', style: TextStyle(fontSize: 40)),
            const SizedBox(height: 60),
            // ---------------------- Push ----------------------
            MaterialButton(
              onPressed: () {
                Navigator.of(context).pushNamed('home');
              },
              color: Colors.blue,
              textColor: Colors.white,
              child: const Text('Home (Push)'),
            ),
            MaterialButton(
              onPressed: () {
                Navigator.of(context).pushNamed('aboutus');
              },
              color: Colors.blue,
              textColor: Colors.white,
              child: const Text('About Us (Push)'),
            ),
            // ---------------------- Push Replacement ----------------------
            MaterialButton(
              onPressed: () {
                Navigator.of(context).pushReplacementNamed('home');
              },
              color: Colors.green,
              textColor: Colors.white,
              child: const Text('Home (Push Replacement)'),
            ),
            MaterialButton(
              onPressed: () {
                Navigator.of(context).pushReplacementNamed('aboutus');
              },
              color: Colors.green,
              textColor: Colors.white,
              child: const Text('About Us (Push Replacement)'),
            ),
            // ---------------------- Push & Remove ----------------------
            if (Navigator.canPop(context))
              MaterialButton(
                onPressed: () {
                  Navigator.of(context).pushNamedAndRemoveUntil(
                    'home',
                    (route) => false,
                  );
                },
                color: Colors.red,
                textColor: Colors.white,
                child: const Text('Home (Push & Remove)'),
              ),
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
