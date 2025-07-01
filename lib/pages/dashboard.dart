import 'package:flutter/material.dart';
import 'AddBook.dart';
import 'Books.dart';
import 'ItemCard.dart';

class Dashboard extends StatefulWidget {
  const Dashboard({super.key});

  @override
  State<Dashboard> createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  List<Books> books = [
    Books(title: 'The Great Gatsby', author: 'F. Scott Fitzgerald', genre: 'Classic', rating: 4.5, progress: '50%'),
    Books(title: '1984', author: 'George Orwell', genre: 'Dystopian', rating: 4.0, progress: '75%'),
    Books(title: 'To Kill a Mockingbird', author: 'Harper Lee', genre: 'Southern Gothic', rating: 4.7, progress: '60%'),
    Books(title: 'The Catcher in the Rye', author: 'J.D. Salinger', genre: 'Coming-of-age', rating: 4.2, progress: '80%'),
    Books(title: 'The Lord of the Rings', author: 'J.R.R. Tolkien', genre: 'Fantasy', rating: 4.8, progress: '90%'),
  ];


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[50],
      appBar: AppBar(
        title: const Text(
          'Book Tracker',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
        backgroundColor: Colors.blue[700],
        elevation: 0,
        centerTitle: true,
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => const AddBook()),
          );
        },
        backgroundColor: Colors.blue[700],
        foregroundColor: Colors.white,
        child: const Icon(Icons.add),
      ),
      
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: books.isEmpty
            ? const Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.book_outlined,
                      size: 80,
                      color: Colors.grey,
                    ),
                    SizedBox(height: 16),
                    Text(
                      'No books yet',
                      style: TextStyle(
                        fontSize: 18,
                        color: Colors.grey,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    SizedBox(height: 8),
                    Text(
                      'Tap the + button to add your first book',
                      style: TextStyle(
                        fontSize: 14,
                        color: Colors.grey,
                      ),
                    ),
                  ],
                ),
              )
            : ListView.separated(
                itemCount: books.length,
                separatorBuilder: (context, index) => const SizedBox(height: 12),
                itemBuilder: (context, index) {
                  return ItemCard(books: books[index]);
                },
              ),
      ),
    );
  }
}