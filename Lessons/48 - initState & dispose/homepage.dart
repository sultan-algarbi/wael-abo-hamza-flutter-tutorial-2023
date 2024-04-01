// ignore_for_file: avoid_print

import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  void initState() {
    super.initState();

    print('================ Home initState');
  }

  @override
  void dispose() {
    super.dispose();
    print('================ Home dispose');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home Page'),
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
                // ---------------------- contactus ----------------------
                TableRow(
                  children: [
                    Container(
                      margin: const EdgeInsets.all(10),
                      child: MaterialButton(
                        onPressed: () {
                          Navigator.of(context).pushNamed('contactus');
                        },
                        color: Colors.blue,
                        textColor: Colors.white,
                        child: const Text('Contact'),
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.all(10),
                      child: MaterialButton(
                        onPressed: () {
                          Navigator.of(context)
                              .pushReplacementNamed('contactus');
                        },
                        color: Colors.green,
                        textColor: Colors.white,
                        child: const Text('Contact'),
                      ),
                    ),
                    if (Navigator.canPop(context))
                      Container(
                        margin: const EdgeInsets.all(10),
                        child: MaterialButton(
                          onPressed: () {
                            Navigator.of(context).pushNamedAndRemoveUntil(
                              'contactus',
                              (route) => false,
                            );
                          },
                          color: Colors.red,
                          textColor: Colors.white,
                          child: const Text('Contact'),
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
