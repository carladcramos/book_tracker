import 'package:book_tracker/pages/AddBook.dart';
import 'package:flutter/material.dart';
import 'package:book_tracker/pages/dashboard.dart';

void main() {
  runApp(MaterialApp(
    home: const Dashboard(),
    routes: {
      '/add': (context) => const AddBook(),
    },
  ));
}
