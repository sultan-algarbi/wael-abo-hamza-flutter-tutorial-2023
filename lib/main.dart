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
      home: Scaffold(
        key: scaffoldkey,
        appBar: myAppBar(),
        drawer: const Drawer(
          elevation: 50.0,
          child: Column(
            children: [
              UserAccountsDrawerHeader(
                accountName: Text('Flutter Tutorial'),
                accountEmail: Text('example@flutter.com'),
                arrowColor: Colors.white,
                currentAccountPicture: CircleAvatar(
                  backgroundImage: AssetImage('assets/images/google.png'),
                ),
              ),
              ListTile(
                title: Text('Home'),
                leading: Icon(Icons.home),
              ),
              ListTile(
                title: Text('Profile'),
                leading: Icon(Icons.person),
              ),
              ListTile(
                title: Text('Settings'),
                leading: Icon(Icons.settings),
              ),
              ListTile(
                title: Text('Logout'),
                leading: Icon(Icons.logout),
              ),
            ],
          ),
        ),
        body: Container(
          alignment: Alignment.center,
          padding: const EdgeInsets.all(30),
          child: Column(
            children: [
              MaterialButton(
                color: Colors.blue,
                textColor: Colors.white,
                onPressed: () {
                  scaffoldkey.currentState!.openDrawer();
                },
                child: const Text('Opne Drawer'),
              ),
            ],
          ),
        ),
      ),
    );
  }

  PreferredSizeWidget myAppBar() {
    return AppBar(
      title: const Text('Flutter Tutorial'),
      centerTitle: true,
      titleTextStyle: const TextStyle(
        color: Colors.yellow,
        fontSize: 20,
        fontWeight: FontWeight.bold,
      ),
      backgroundColor: Colors.blue,
      elevation: 20.0,
      actions: [
        IconButton(
          icon: const Icon(Icons.search),
          onPressed: () {
            print('Search button clicked');
          },
        ),
        IconButton(
          icon: const Icon(Icons.notifications),
          onPressed: () {
            print('Notification button clicked');
          },
        ),
      ],
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
