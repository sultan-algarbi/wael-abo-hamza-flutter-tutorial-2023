import 'package:flutter/material.dart';

class Category {
  final IconData icon;
  final String title;

  Category({
    required this.icon,
    required this.title,
  });
}

class Book {
  final String title;
  final String description;
  final double price;
  final String image;
  final String author;
  final String category;

  Book({
    required this.title,
    required this.description,
    required this.price,
    required this.image,
    required this.author,
    required this.category,
  });
}
