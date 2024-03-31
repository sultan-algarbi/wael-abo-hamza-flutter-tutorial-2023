import 'package:flutter/material.dart';
import 'package:wael_abo_hamza_tutorial/interfaces.dart';

class ItemDetails extends StatefulWidget {
  final Book book;
  const ItemDetails({
    super.key,
    required this.book,
  });

  @override
  State<ItemDetails> createState() => _ItemDetailsState();
}

class _ItemDetailsState extends State<ItemDetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      endDrawer: const Drawer(),
      appBar: AppBar(
        backgroundColor: Colors.grey[200],
        title: Text(widget.book.title),
        titleTextStyle: const TextStyle(
            fontWeight: FontWeight.bold, color: Colors.black, fontSize: 20),
        centerTitle: true,
        iconTheme: const IconThemeData(color: Colors.grey),
      ),
      body: ListView(
        children: [
          Image.asset(widget.book.image),
          Text(widget.book.title),
          Text(widget.book.description),
          Text(widget.book.price.toString()),
        ],
      ),
    );
  }
}
