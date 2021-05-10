import 'package:flutter/material.dart';
import 'package:netflix/screens/homescreen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Netflix',
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.black,
        primarySwatch: Colors.red,
        brightness: Brightness.dark,
      ),
      home: HomeScreen(),
    );
  }
}
