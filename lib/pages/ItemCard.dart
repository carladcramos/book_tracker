import 'package:flutter/material.dart';
import 'ListItems.dart';

class ItemCard extends StatelessWidget {
  final Book books;
  const ItemCard({
    super.key,
    required this.books
    });

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        children: [
          Text(books.title),
          Text(books.author),
          Text(books.genre),
        ],
      ),
    );
  }
}