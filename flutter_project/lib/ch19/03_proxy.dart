import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class Counter with ChangeNotifier {
  int _count = 0;
  int get count => _count;

  void increment() {
    _count++;
    notifyListeners();
  }
}

class Sum {
  int _sum = 0;
  int get sum => _sum;

  set sum(value) {
    _sum = 0;
    for (int i = 1; i <= value; i++) {
      _sum += i;
    }
  }

  Sum(Counter counter) {
    sum = counter.count;
  }
}

void main() {
  runApp(const MyApp());
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
            ChangeNotifierProvider<Counter>.value(value: Counter()),
            ProxyProvider<Counter, Sum>(
              update: (context, value, previous) {
                if (previous != null) {
                  previous.sum = value.count;
                  return previous;
                } else {
                  return Sum(value);
                }
              },
            ),
            ProxyProvider2<Counter, Sum, String>(
              update: (context, value, value2, previous) {
                return 'Count : ${value.count}, sum: ${value2.sum}';
              },
            )
          ],
          child: const SubWidget(),
        ),
      ),
    );
  }
}

class SubWidget extends StatelessWidget {
  const SubWidget({super.key});

  @override
  Widget build(BuildContext context) {
    var counter = Provider.of<Counter>(context);
    var sum = Provider.of<Sum>(context);
    var stringData = Provider.of<String>(context);
    return Container(
      color: Colors.orange,
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'count : ${counter.count}',
              style: const TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
            Text(
              'sum : ${sum.sum}',
              style: const TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
            Text(
              'string : $stringData',
              style: const TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
            ElevatedButton(
              onPressed: counter.increment,
              child: const Text('increment'),
            )
          ],
        ),
      ),
    );
  }
}
