// ignore_for_file: avoid_print

import 'package:flutter/material.dart';

class ContactUs extends StatefulWidget {
  const ContactUs({super.key});

  @override
  State<ContactUs> createState() => _ContactUsState();
}

class _ContactUsState extends State<ContactUs> {
  @override
  void initState() {
    super.initState();

    print('================ ContactUs initState');
  }

  @override
  void dispose() {
    super.dispose();
    print('================ ContactUs dispose');
  }

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
            Table(
              defaultVerticalAlignment: TableCellVerticalAlignment.middle,
              children: [
                TableRow(children: [
                  const Center(
                    child: Text(
                      'Push',
                      style: TextStyle(fontSize: 14),
                    ),
                  ),
                  const Center(
                    child: Text(
                      'Push Replacement',
                      style: TextStyle(fontSize: 14),
                    ),
                  ),
                  if (Navigator.canPop(context))
                    const Center(
                      child: Text(
                        'Push & Remove',
                        style: TextStyle(fontSize: 14),
                      ),
                    ),
                ]),
                // ---------------------- aboutus ----------------------
                TableRow(
                  children: [
                    Container(
                      margin: const EdgeInsets.all(10),
                      child: MaterialButton(
                        onPressed: () {
                          Navigator.of(context).pushNamed('aboutus');
                        },
                        color: Colors.blue,
                        textColor: Colors.white,
                        child: const Text('About Us'),
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.all(10),
                      child: MaterialButton(
                        onPressed: () {
                          Navigator.of(context).pushReplacementNamed('aboutus');
                        },
                        color: Colors.green,
                        textColor: Colors.white,
                        child: const Text('About Us'),
                      ),
                    ),
                    if (Navigator.canPop(context))
                      Container(
                        margin: const EdgeInsets.all(10),
                        child: MaterialButton(
                          onPressed: () {
                            Navigator.of(context).pushNamedAndRemoveUntil(
                              'aboutus',
                              (route) => false,
                            );
                          },
                          color: Colors.red,
                          textColor: Colors.white,
                          child: const Text('About Us'),
                        ),
                      ),
                  ],
                ),
                // ---------------------- home ----------------------
                TableRow(
                  children: [
                    Container(
                      margin: const EdgeInsets.all(10),
                      child: MaterialButton(
                        onPressed: () {
                          Navigator.of(context).pushNamed('home');
                        },
                        color: Colors.blue,
                        textColor: Colors.white,
                        child: const Text('Home'),
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.all(10),
                      child: MaterialButton(
                        onPressed: () {
                          Navigator.of(context).pushReplacementNamed('home');
                        },
                        color: Colors.green,
                        textColor: Colors.white,
                        child: const Text('Home'),
                      ),
                    ),
                    if (Navigator.canPop(context))
                      Container(
                        margin: const EdgeInsets.all(10),
                        child: MaterialButton(
                          onPressed: () {
                            Navigator.of(context).pushNamedAndRemoveUntil(
                              'home',
                              (route) => false,
                            );
                          },
                          color: Colors.red,
                          textColor: Colors.white,
                          child: const Text('Home'),
                        ),
                      ),
                  ],
                ),
              ],
            ),

            // ---------------------- Pop ----------------------
            if (Navigator.canPop(context))
              Container(
                margin: const EdgeInsets.all(10),
                child: MaterialButton(
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                  color: Colors.black,
                  textColor: Colors.white,
                  child: const Text('Back (Pop)'),
                ),
              ),
          ],
        ),
      ),
    );
  }
}
