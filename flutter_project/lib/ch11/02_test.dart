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
  bool? isChecked = true;
  String? selectPlatform;
  double sliderValue = 5.0;
  bool switchValue = true;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Text('Checkbox Test'),
        Row(
          children: [
            Checkbox(
              value: isChecked,
              onChanged: (bool? value) {
                setState(() {
                  isChecked = value;
                });
              },
            ),
            Text('checkbox value is $isChecked'),
          ],
        ),
        const Text('Radio Test'),
        Row(
          children: [
            Radio(
              value: "android",
              groupValue: selectPlatform,
              onChanged: (value) {
                setState(() {
                  selectPlatform = value;
                });
              },
            ),
            const Text('android'),
            Radio(
                value: 'ios',
                groupValue: selectPlatform,
                onChanged: (value) {
                  setState(() {
                    selectPlatform = value;
                  });
                }),
            const Text('ios'),
          ],
        ),
        Text('select platform is $selectPlatform'),
        const Text('Slider Test'),
        Slider(
            value: sliderValue,
            min: 0,
            max: 10,
            onChanged: (value) {
              setState(() {
                sliderValue = value;
              });
            }),
        Text('slider value is $sliderValue'),
        const Text('Switch Test'),
        Switch(
            value: switchValue,
            onChanged: (bool value) {
              switchValue = value;
            }),
        Text('select value is $switchValue'),
      ],
    );
  }
}
