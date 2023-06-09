import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Home Button Example'),
        ),
        body: WillPopScope(
          onWillPop: () async {
            // 뒤로가기 버튼이 눌렸을 때의 동작을 수행
            print('홈 버튼이 눌렸습니다!');
            // 여기에 원하는 동작을 추가하면 됩니다.
            // 예를 들어 앱을 종료하려면 SystemNavigator.pop()을 호출할 수 있습니다.
            // SystemNavigator.pop();
            return false; // true를 반환하면 기본 동작인 앱 종료를 수행하지 않습니다.
          },
          child: const Center(
            child: Column(
              children: [
                Text('Press the Home button'),
                TextField(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
