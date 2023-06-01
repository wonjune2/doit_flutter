import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Test'),
        ),
        body: Column(
          children: [
            IntrinsicWidth(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Container(
                    color: Colors.red,
                    width: 50,
                    height: 50,
                  ),
                  Container(
                    color: Colors.green,
                    width: 150,
                    height: 150,
                  ),
                  Container(
                    color: Colors.blue,
                    width: 100,
                    height: 100,
                  ),
                ],
              ),
            ),
            ConstrainedBox(
              constraints: const BoxConstraints(maxHeight: 50, minWidth: 300),
              child: Container(
                color: Colors.amber,
                width: 150,
                height: 150,
              ),
            )
          ],
        ),
      ),
    );
  }
}
