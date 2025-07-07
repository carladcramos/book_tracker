import 'package:flutter/material.dart';
import 'World_time/home.dart';
import 'World_time/loading.dart';
import 'World_time/choose_location.dart';

void main() {
  runApp(MaterialApp(
    home: Home(),
    routes: {
      '/home': (context) => Home(),
      '/loading': (context) => Loading(),
      '/choose_location': (context) => ChooseLocation(),
    },
  ));
}


