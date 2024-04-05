// ignore_for_file: avoid_print

import 'package:flutter/material.dart';
import 'package:wael_abo_hamza_tutorial/data.dart';
import 'package:wael_abo_hamza_tutorial/interfaces.dart';

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
      home: Scaffold(
        key: scaffoldkey,
        appBar: AppBar(
          title: const Text(
            'Wael Abo Hamza Tutorial',
            style: TextStyle(color: Colors.white),
          ),
          backgroundColor: Colors.blue,
          actions: [
            IconButton(
              icon: const Icon(Icons.search, color: Colors.white),
              onPressed: () async {
                await showSearch(
                  context: context,
                  delegate: CustomSearchDelegate(),
                );
              },
            )
          ],
        ),
        body: const Center(
          child: Text('Welcome to Wael Abo Hamza Tutorial'),
        ),
      ),
    );
  }
}

class CustomSearchDelegate extends SearchDelegate {
  @override
  List<Widget>? buildActions(BuildContext context) {
    return [
      IconButton(
        icon: const Icon(Icons.clear),
        onPressed: () {
          query = '';
        },
      ),
    ];
  }

  @override
  Widget? buildLeading(BuildContext context) {
    return IconButton(
      onPressed: () => Navigator.of(context).pop(),
      icon: const Icon(Icons.arrow_back),
    );
  }

  @override
  Widget buildResults(BuildContext context) {
    return const Center(
      child: Text('Results'),
    );
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    List<Book> listOfBooks = query.isEmpty
        ? books
        : books
            .where((element) =>
                element.title.toLowerCase().contains(query.toLowerCase()))
            .toList();

    return ListView.builder(
      itemCount: listOfBooks.length,
      itemBuilder: (context, index) {
        return InkWell(
          onTap: () {
            showResults(context);
          },
          child: ListTile(
            title: Text(listOfBooks[index].title),
          ),
        );
      },
    );
  }
}
