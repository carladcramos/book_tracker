import 'package:flutter/material.dart';
import 'ItemCard.dart';

// Book model class
class Book {
  final String title;
  final String author;
  final String genre;
  final String rating;
  final String progress;

  Book({
    required this.title,
    required this.author,
    required this.genre,
    required this.rating,
    required this.progress,
  });
}

class ListItems extends StatefulWidget {
  final List<Book> books;
  const ListItems({super.key,
    required this.books,
  });

  @override
  State<ListItems> createState() => _ListItemsState();
}

class _ListItemsState extends State<ListItems> {
  List<Book> books = [
    Book(title: 'The Great Gatsby', author: 'F. Scott Fitzgerald', genre: 'Classic', rating: '4.5', progress: '50%'),
    Book(title: '1984', author: 'George Orwell', genre: 'Dystopian', rating: '4.0', progress: '75%'),
    Book(title: 'To Kill a Mockingbird', author: 'Harper Lee', genre: 'Southern Gothic', rating: '4.7', progress: '60%'),
    Book(title: 'The Catcher in the Rye', author: 'J.D. Salinger', genre: 'Coming-of-age', rating: '4.2', progress: '80%'),
    Book(title: 'The Lord of the Rings', author: 'J.R.R. Tolkien', genre: 'Fantasy', rating: '4.8', progress: '90%'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Book Tracker'),
      ),
      body: Column(
        children: books.map((book) {
          return ItemCard(books: book);
        }).toList(),
      ),  
    );
  }
}