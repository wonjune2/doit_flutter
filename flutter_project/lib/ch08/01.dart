import 'package:flutter/material.dart';

void main() {
  runApp(const MyWidget());
}

class MyWidget extends StatelessWidget {
  const MyWidget({super.key});
  final bool test = true;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(brightness: test ? Brightness.dark : Brightness.light),
      home: const Scaffold(
        body: Placeholder(),
      ),
    );
  }
}
