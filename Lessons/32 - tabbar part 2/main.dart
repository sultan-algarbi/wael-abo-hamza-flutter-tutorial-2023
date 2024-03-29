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

class _MyAppState extends State<MyApp> with SingleTickerProviderStateMixin {
  GlobalKey<ScaffoldState> scaffoldkey = GlobalKey();

  TabController? tabController;

  @override
  void initState() {
    super.initState();
    tabController = TabController(
      length: 10,
      vsync: this,
      initialIndex: 1,
      animationDuration: const Duration(seconds: 2),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        key: scaffoldkey,
        appBar: AppBar(
          title: const Text('Flutter Tutorial'),
          backgroundColor: Colors.blue,
          titleTextStyle: const TextStyle(
            color: Colors.white,
            fontSize: 20,
          ),
          bottom: TabBar(
            controller: tabController,
            tabAlignment: TabAlignment.start,
            labelColor: Colors.white,
            unselectedLabelColor: Colors.grey,
            indicatorColor: Colors.orange,
            indicatorWeight: 5,
            isScrollable: true,
            tabs: const [
              Tab(icon: Icon(Icons.home), text: 'Home'),
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
          child: TabBarView(
            controller: tabController,
            children: [
              Column(
                children: [
                  const Text('Home Page'),
                  MaterialButton(
                      onPressed: () {
                        tabController!.animateTo(1);
                      },
                      child: const Text('Move to Settings Page')),
                ],
              ),
              const Text('Settings Page'),
              const Text('Info Page'),
              const Text('Help Page'),
              const Text('Account Page'),
              const Text('Add Page'),
              const Text('Delete Page'),
              const Text('Edit Page'),
              const Text('Save Page'),
              const Text('Search Page'),
            ],
          ),
        ),
      ),
    );
  }
}
