import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int selectedValue = 0;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('CupertinoPicker Example'),
        ),
        body: Center(
          child: CupertinoPicker(
            itemExtent: 50,
            onSelectedItemChanged: (index) {
              setState(() {
                selectedValue = index;
              });
            },
            children: List<Widget>.generate(10, (index) {
              return Center(
                child: Text(
                  'Item ${index + 1}',
                  style: const TextStyle(fontSize: 16),
                ),
              );
            }),
          ),
        ),
      ),
    );
  }
}
