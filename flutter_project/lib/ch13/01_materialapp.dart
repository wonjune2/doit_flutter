import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.pink,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Test'),
        ),
        body: Center(
            child: Column(
          children: [
            ElevatedButton(onPressed: () {}, child: const Text('Button')),
            Checkbox(value: true, onChanged: (value) {}),
            const Text('Hello World'),
          ],
        )),
        floatingActionButton: FloatingActionButton(
          child: const Icon(Icons.add),
          onPressed: () {},
        ),
      ),
    );
  }
}
