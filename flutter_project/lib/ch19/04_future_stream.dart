import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

Stream<int> streamFun() async* {
  for (int i = 1; i <= 5; i++) {
    await Future.delayed(const Duration(seconds: 1));
    yield i;
  }
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(),
        body: MultiProvider(
          providers: [
            FutureProvider<String>(
              create: (context) =>
                  Future.delayed(const Duration(seconds: 4), () => 'world'),
              initialData: 'hello',
            ),
            StreamProvider<int>(
              create: (context) => streamFun(),
              initialData: 0,
            ),
          ],
        ),
      ),
    );
  }
}

class SubWidget extends StatelessWidget {
  const SubWidget({super.key});

  @override
  Widget build(BuildContext context) {
    var futureState = Provider.of<String>(context);
    var streamState = Provider.of<int>(context);
    return Container(
      color: Colors.red,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            'future: $futureState',
            style: const TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          ),
          Text(
            'stream: $streamState',
            style: const TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          ),
        ],
      ),
    );
  }
}
