import 'package:flutter/material.dart';
import 'home.dart';
//Myla Newby - CW02
/*
  Goal: Create 2 screens and implement navigation between 
  1. home screen (displays list of recipe names, can tap on it to view next screen) and 
  2. details screen (displays recipe details like ingredients + instructions)
*/
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: 
        Home(),
    );
  }
}