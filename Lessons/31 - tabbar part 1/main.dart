// ignore_for_file: avoid_print

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
  GlobalKey<ScaffoldState> scaffoldkey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: DefaultTabController(
        length: 10,
        child: Scaffold(
          key: scaffoldkey,
          appBar: AppBar(
            title: const Text('Flutter Tutorial'),
            backgroundColor: Colors.blue,
            titleTextStyle: const TextStyle(
              color: Colors.white,
              fontSize: 20,
            ),
            bottom: const TabBar(
              labelColor: Colors.white,
              tabAlignment: TabAlignment.start,
              dividerColor: Colors.white,
              indicatorColor: Colors.yellow,
              isScrollable: true,
              tabs: [
                Tab(
                  icon: Icon(Icons.home),
                  text: 'Home',
                ),
                Tab(icon: Icon(Icons.settings), text: 'Settings'),
                Tab(icon: Icon(Icons.info), text: 'Info'),
                Tab(icon: Icon(Icons.help), text: 'Help'),
                Tab(icon: Icon(Icons.account_circle), text: 'Account'),
                Tab(icon: Icon(Icons.add), text: 'Add'),
                Tab(icon: Icon(Icons.delete), text: 'Delete'),
                Tab(icon: Icon(Icons.edit), text: 'Edit'),
                Tab(icon: Icon(Icons.save), text: 'Save'),
                Tab(icon: Icon(Icons.search), text: 'Search'),
              ],
            ),
          ),
          body: Container(
            alignment: Alignment.center,
            padding: const EdgeInsets.all(30),
            child: const TabBarView(
              children: [
                Text('Home Page'),
                Text('Settings Page'),
                Text('Info Page'),
                Text('Help Page'),
                Text('Account Page'),
                Text('Add Page'),
                Text('Delete Page'),
                Text('Edit Page'),
                Text('Save Page'),
                Text('Search Page'),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
