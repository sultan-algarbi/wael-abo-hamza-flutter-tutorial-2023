import 'package:flutter/material.dart';

class MyBottomNavigationBar extends StatefulWidget {
  final int currentIndex;
  const MyBottomNavigationBar({super.key, required this.currentIndex});

  @override
  State<MyBottomNavigationBar> createState() => _MyBottomNavigationBarState();
}

class _MyBottomNavigationBarState extends State<MyBottomNavigationBar> {
  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      currentIndex: widget.currentIndex,
      elevation: 20,
      selectedItemColor: Colors.orange,
      unselectedItemColor: Colors.grey,
      items: const [
        BottomNavigationBarItem(
          icon: Icon(Icons.home),
          label: 'الرئيسية',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.favorite),
          label: 'المفضلة',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.shopping_cart),
          label: 'السلة',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.person),
          label: 'الحساب',
        ),
      ],
    );
  }
}
