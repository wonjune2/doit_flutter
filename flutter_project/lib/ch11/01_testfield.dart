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
          title: const Text('Test'),
        ),
        body: const TestScreen(),
      ),
    );
  }
}

class TestScreen extends StatefulWidget {
  const TestScreen({super.key});

  @override
  State<TestScreen> createState() => _TestScreenState();
}

class _TestScreenState extends State<TestScreen> {
  final controller = TextEditingController();
  int textCounter = 0;

  _printValue() {
    print('printValue() : ${controller.text}');
    setState(() {
      textCounter = controller.text.length;
    });
  }

  @override
  void initState() {
    super.initState();
    controller.addListener(_printValue);
  }

  @override
  void dispose() {
    super.dispose();
    controller.addListener(_printValue);
  }

  @override
  Widget build(BuildContext context) {
    print('build...');
    return Column(
      children: [
        const Text('TextField Test'),
        TextField(
          style: const TextStyle(fontSize: 15.0),
          controller: controller,
          decoration: InputDecoration(
            labelText: 'Data',
            prefixIcon: const Icon(Icons.input),
            border: const OutlineInputBorder(),
            hintText: 'Hint Text',
            helperText: "데이터를 입력하세요",
            counterText: '$textCounter cahr',
          ),
          textInputAction: TextInputAction.search,
          keyboardType: TextInputType.emailAddress,
          minLines: 2,
          maxLines: 5,
        ),
      ],
    );
  }
}
