import 'package:flutter/material.dart';
import 'package:flutter_project/ch14/01_navigation/user.dart';

class FirstScreen extends StatelessWidget {
  const FirstScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('FirstScreen'),
        ),
        body: Container(
          color: Colors.cyan,
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  'FirstScreen',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 30,
                  ),
                ),
                ElevatedButton(
                  onPressed: () async {
                    final result = await Navigator.pushNamed(
                      context,
                      '/two',
                      arguments: {
                        'arg1': 10,
                        "arg2": 'hello',
                        'arg3': User(address: 'seoul', name: 'kkang'),
                      },
                    );
                    Navigator.pushNamed(context, '/two');
                    print('result: ${(result as User).name}');
                  },
                  child: const Text('Go Two'),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
