import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  List<Widget> getWidgets() {
    List<Widget> widgets = [];
    for (var i = 0; i < 100; i++) {
      widgets.add(ListTile(
        title: Text('Hello World Item $i'),
      ));
    }
    return widgets;
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          body: CustomScrollView(
        slivers: [
          SliverAppBar(
            leading: IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.expand,
              ),
            ),
            expandedHeight: 200,
            floating: true,
            pinned: false,
            snap: false,
            elevation: 50,
            backgroundColor: Colors.pink,
            flexibleSpace: Container(
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('images/big.jpeg'),
                ),
              ),
            ),
            title: const Text('AppBar title'),
            actions: [
              IconButton(
                onPressed: () {},
                icon: const Icon(Icons.add_alert),
              ),
              IconButton(
                onPressed: () {},
                icon: const Icon(Icons.phone),
              ),
            ],
          ),
          SliverFixedExtentList(
              delegate: SliverChildBuilderDelegate((context, index) {
                return ListTile(
                  title: Text('Hello Wolrd Item $index'),
                );
              }),
              itemExtent: 50.0)
        ],
      )),
    );
  }
}
