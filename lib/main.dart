import 'package:flutter/material.dart';

// Book model without ratings
class Book {
  final String title;
  final String author;

  Book({
    required this.title,
    required this.author,
  });
}

// List of books
final List<Book> books = [
  Book(
    title: 'The Hunger Games (The Hunger Games, #1)',
    author: 'Suzanne Collins',
  ),
  Book(
    title: 'Pride and Prejudice',
    author: 'Jane Austen',
  ),
  Book(
    title: 'To Kill a Mockingbird',
    author: 'Harper Lee',
  ),
  Book(
    title: 'Harry Potter and the Order of the Phoenix (Harry Potter, #5)',
    author: 'J.K. Rowling',
  ),
  Book(
    title: 'The Book Thief',
    author: 'Markus Zusak',
  ),
  Book(
    title: 'Twilight (The Twilight Saga, #1)',
    author: 'Stephenie Meyer',
  ),
];

void main() {
  runApp(MaterialApp(
    home: Scaffold(
      appBar: AppBar(
        title: Text('Book Tracker'),
        backgroundColor: Colors.lightBlue[800],
      ),
      body: ListView.builder(
        itemCount: books.length,
        itemBuilder: (context, index) {
          final book = books[index];
          return Card(
            margin: EdgeInsets.symmetric(vertical: 6, horizontal: 10),
            child: ListTile(
              leading: CircleAvatar(
                child: Text('${index + 1}'),
                backgroundColor: Colors.lightBlue[200],
              ),
              title: Text(book.title, style: TextStyle(fontWeight: FontWeight.bold)),
              subtitle: Text('by ${book.author}'),
            ),
          );
        },
      ),
    ),
  ));
}