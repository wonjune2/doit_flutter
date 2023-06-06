import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  bool enabled = false;
  String stateText = 'disable';

  MyApp({super.key});

  void changeCheck() {
    if (enabled) {
      stateText = 'disable';
      enabled = false;
    } else {
      stateText = 'enable';
      enabled = true;
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Stateless Test'),
        ),
        body: const MyWidget(),
      ),
    );
  }
}

class MyWidget extends StatefulWidget {
  const MyWidget({super.key});

  @override
  State<MyWidget> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<MyWidget> {
  bool enabled = false;
  String stateText = 'disable';

  void changeCheck() {
    setState(() {
      if (enabled) {
        stateText = 'disable';
        enabled = false;
      } else {
        stateText = 'enable';
        enabled = true;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                IconButton(
                  onPressed: changeCheck,
                  icon: (enabled
                      ? const Icon(
                          Icons.check,
                          size: 20,
                        )
                      : const Icon(
                          Icons.check_box_outline_blank,
                          size: 20,
                        )),
                  color: Colors.red,
                ),
                Container(
                  constraints: const BoxConstraints.expand(),
                  padding: const EdgeInsets.only(left: 16),
                  child: Text(
                    stateText,
                    style: const TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
