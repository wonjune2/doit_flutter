import 'package:flutter/material.dart';
import 'package:flutter_project/ch14/01_navigation/user.dart';

class TwoScreen extends StatelessWidget {
  const TwoScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('TwoScreen'),
        ),
        body: Container(
          color: Colors.cyan,
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  'TwoScreen',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 30,
                  ),
                ),
                ElevatedButton(
                  onPressed: () {
                    Navigator.pushNamed(context, '/three');
                  },
                  child: const Text('Go Three'),
                ),
                ElevatedButton(
                  onPressed: () {
                    Navigator.pop(context, User(name: 'kim', address: 'busan'));
                  },
                  child: const Text('Pop'),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
