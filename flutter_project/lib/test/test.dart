import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: const Text('Number Keyboard')),
        body: const Center(
          child: NumberKeyboardWidget(),
        ),
      ),
    );
  }
}

class NumberKeyboardWidget extends StatefulWidget {
  const NumberKeyboardWidget({super.key});

  @override
  _NumberKeyboardWidgetState createState() => _NumberKeyboardWidgetState();
}

class _NumberKeyboardWidgetState extends State<NumberKeyboardWidget> {
  @override
  void initState() {
    super.initState();
    _showNumberKeyboard();
  }

  void _showNumberKeyboard() async {
    await SystemChannels.textInput.invokeMethod('TextInput.show', {
      'inputType': TextInputType.number.index,
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
