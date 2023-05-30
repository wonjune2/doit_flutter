import 'package:flutter/material.dart';
import 'package:flutter_project/ch14/01_navigation/first_screen.dart';
import 'package:flutter_project/ch14/01_navigation/four_screen.dart';
import 'package:flutter_project/ch14/01_navigation/three_screen.dart';
import 'package:flutter_project/ch14/01_navigation/two_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/one',
      routes: {
        '/one': (context) => const FirstScreen(),
        '/two': (context) => const TwoScreen(),
        '/three': (context) => const ThreeScreen(),
        '/four': (context) => const FourScreen(),
      },
    );
  }
}
