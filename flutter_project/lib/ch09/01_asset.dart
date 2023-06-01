import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  Future<String> useRootBundle() async {
    return await rootBundle.loadString('assets/text/my_text.txt');
  }

  Future<String> useDefaultAssetBundle(BuildContext context) async {
    return await DefaultAssetBundle.of(context)
        .loadString('assets/text/my_text.txt');
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Test'),
        ),
        body: Column(
          children: [
            Image.asset('images/icon.jpg'),
            Image.asset('images/icon/user.png'),
            // FutureBuilder는 비동기 데이터를 이용해 화면을 구성하는 위젯
            FutureBuilder(
              future: useRootBundle(),
              builder: (context, snapshot) {
                return Text('rootBundle : ${snapshot.data}');
              },
            ),
            FutureBuilder(
              future: useDefaultAssetBundle(context),
              builder: (context, snapshot) {
                return Text('DefaultAssetBundle : ${snapshot.data}');
              },
            )
          ],
        ),
      ),
    );
  }
}
