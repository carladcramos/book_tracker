import 'package:flutter/material.dart';

//worldtime
import 'World_time/home.dart';
import 'World_time/loading.dart';
import 'World_time/choose_location.dart';


void main() {
  runApp(MaterialApp(
      initialRoute: '/',
      routes:{
        //worldtime
        '/': (context) => const Loading(),
        '/home': (context) => const Home(),
        '/location': (context) => const ChooseLocation(),
      }
  ));
}
