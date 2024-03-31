import 'package:flutter/material.dart';
import 'package:wael_abo_hamza_tutorial/interfaces.dart';
import 'package:wael_abo_hamza_tutorial/mybottomnavigationbar.dart';

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
      bottomNavigationBar: const MyBottomNavigationBar(currentIndex: 0),
      endDrawer: const Drawer(),
      appBar: AppBar(
        backgroundColor: Colors.grey[200],
        title: Text(widget.book.title),
        titleTextStyle: const TextStyle(
          fontWeight: FontWeight.bold,
          color: Colors.black,
          fontSize: 20,
        ),
        centerTitle: true,
        iconTheme: const IconThemeData(color: Colors.grey),
      ),
      body: ListView(
        children: [
          Container(
            height: 350,
            margin: const EdgeInsets.only(bottom: 20),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: Colors.grey[200],
            ),
            child: Image.asset(widget.book.image),
          ),
          Text(
            widget.book.title,
            textAlign: TextAlign.center,
            style: const TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
              color: Colors.black,
            ),
          ),
          Container(
            margin: const EdgeInsets.only(top: 10),
            padding: const EdgeInsets.symmetric(horizontal: 35.0),
            child: Text(
              widget.book.description,
              textAlign: TextAlign.center,
              style: const TextStyle(
                fontSize: 16,
                color: Colors.grey,
              ),
            ),
          ),
          Container(
            margin: const EdgeInsets.only(top: 10),
            padding: const EdgeInsets.symmetric(horizontal: 35.0),
            child: Text(
              "\$${widget.book.price}",
              textAlign: TextAlign.center,
              style: const TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Colors.orange,
              ),
            ),
          ),
          Container(
            margin: const EdgeInsets.only(top: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  padding: const EdgeInsets.only(right: 20.0),
                  child: const Text(
                    ":المؤلف",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        fontSize: 16,
                        color: Colors.grey,
                        fontWeight: FontWeight.bold),
                  ),
                ),
                Text(
                  widget.book.author,
                  textAlign: TextAlign.center,
                  style: const TextStyle(
                    fontSize: 16,
                    color: Colors.black,
                  ),
                ),
              ],
            ),
          ),
          Container(
            margin: const EdgeInsets.only(top: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  padding: const EdgeInsets.only(right: 20.0),
                  child: const Text(
                    ":التصنيف",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        fontSize: 16,
                        color: Colors.grey,
                        fontWeight: FontWeight.bold),
                  ),
                ),
                Text(
                  widget.book.category,
                  textAlign: TextAlign.center,
                  style: const TextStyle(
                    fontSize: 16,
                    color: Colors.black,
                  ),
                ),
              ],
            ),
          ),
          Container(
            margin: const EdgeInsets.symmetric(vertical: 20, horizontal: 70),
            width: 50,
            child: MaterialButton(
              padding: const EdgeInsets.symmetric(vertical: 15.0),
              onPressed: () {},
              color: Colors.black,
              textColor: Colors.white,
              child: const Text('أضف إلى السلة'),
            ),
          )
        ],
      ),
    );
  }
}
