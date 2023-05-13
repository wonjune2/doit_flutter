import 'package:flutter/material.dart';

class MyREDItemWidgetState extends StatefulWidget {
  const MyREDItemWidgetState({super.key});

  @override
  State<MyREDItemWidgetState> createState() => _MyREDItemWidgetStateState(
        Colors.red,
      );
}

class _MyREDItemWidgetStateState extends State<MyREDItemWidgetState> {
  Color color;
  _MyREDItemWidgetStateState(this.color);
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        color: color,
        width: 150,
        height: 150,
      ),
    );
  }
}

class MyBLUEItemWidgetState extends StatefulWidget {
  const MyBLUEItemWidgetState({super.key});

  @override
  State<MyBLUEItemWidgetState> createState() =>
      _MyBLUEItemWidgetStateState(Colors.blue);
}

class _MyBLUEItemWidgetStateState extends State<MyBLUEItemWidgetState> {
  Color color;
  _MyBLUEItemWidgetStateState(this.color);
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        color: color,
        width: 150,
        height: 150,
      ),
    );
  }
}

class MyListWidgetState extends StatefulWidget {
  const MyListWidgetState({super.key});

  @override
  State<MyListWidgetState> createState() => _MyListWidgetStateState();
}

class _MyListWidgetStateState extends State<MyListWidgetState> {
  @override
  List<Widget> widgetList = [
    const MyREDItemWidgetState(),
    const MyBLUEItemWidgetState(),
  ];

  onChange() {
    setState(() {
      widgetList.insert(1, widgetList.removeAt(0));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Key Test'),
      ),
      body: Column(
        children: [
          Row(
            children: widgetList,
          ),
          ElevatedButton(onPressed: onChange, child: const Text('toggle'))
        ],
      ),
    );
  }
}
