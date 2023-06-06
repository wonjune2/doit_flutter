import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    if (Platform.isIOS) {
      return CupertinoApp(
        theme: const CupertinoThemeData(brightness: Brightness.light),
        home: CupertinoPageScaffold(
          navigationBar: const CupertinoNavigationBar(
            middle: Text('Cupertino'),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CupertinoButton(
                child: const Text('Click'),
                onPressed: () {},
              ),
              const Center(
                child: Text('Hello World'),
              )
            ],
          ),
        ),
      );
    } else if (Platform.isAndroid) {
      return MaterialApp(
        home: Scaffold(
          appBar: AppBar(
            title: const Text('Material Title'),
          ),
          body: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                onPressed: () {},
                child: const Text('click'),
              ),
              const Center(
                child: Text('HellWorld'),
              )
            ],
          ),
        ),
      );
    } else {
      return const Text(
        'unknown Device',
      );
    }
  }
}
