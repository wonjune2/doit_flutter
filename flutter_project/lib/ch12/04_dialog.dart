import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

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
  DateTime dateValue = DateTime.now();
  TimeOfDay timeValue = TimeOfDay.now();

  _dialog() {
    showDialog(
      context: context,
      barrierDismissible: true,
      builder: (BuildContext context) {
        return AlertDialog(
          title: const Text("Dialog Title"),
          content: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              const TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                ),
              ),
              Row(
                children: [
                  Checkbox(
                    value: true,
                    onChanged: (value) {},
                  ),
                  const Text('수신동의'),
                ],
              )
            ],
          ),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: const Text('OK'),
            )
          ],
        );
      },
    );
  }

  _bottomSheet() {
    showBottomSheet(
      context: context,
      backgroundColor: Colors.yellow,
      builder: (context) {
        return Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            ListTile(
              leading: const Icon(Icons.add),
              title: const Text('ADD'),
              onTap: () {
                Navigator.of(context).pop();
              },
            ),
            ListTile(
              leading: const Icon(Icons.remove),
              title: const Text('REMOVE'),
              onTap: () {
                Navigator.of(context).pop();
              },
            ),
          ],
        );
      },
    );
  }

  _modalBottomSheet() {
    showModalBottomSheet(
      context: context,
      backgroundColor: Colors.yellow,
      builder: (context) {
        return SafeArea(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              ListTile(
                leading: const Icon(Icons.add),
                title: const Text("ADD"),
                onTap: () {
                  Navigator.of(context).pop();
                },
              ),
              ListTile(
                leading: const Icon(Icons.remove),
                title: const Text("REMOVE"),
                onTap: () {
                  Navigator.of(context).pop();
                },
              ),
            ],
          ),
        );
      },
    );
  }

  Future datePicker() async {
    DateTime? picked = await showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime(2016),
      lastDate: DateTime(2030),
    );
    if (picked != null) setState(() => dateValue = picked);
  }

  Future timePicker() async {
    TimeOfDay? selectedTime = await showTimePicker(
      initialTime: TimeOfDay.now(),
      context: context,
    );
    if (selectedTime != null) {
      setState(() {
        timeValue = selectedTime;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          ElevatedButton(onPressed: _dialog, child: const Text('dialog')),
          ElevatedButton(
              onPressed: _bottomSheet, child: const Text('bottomSheet')),
          ElevatedButton(
              onPressed: _modalBottomSheet,
              child: const Text('modalBottomSheet')),
          ElevatedButton(
              onPressed: datePicker, child: const Text('dataPicker')),
          Text('data: ${DateFormat('yyyy-MM-dd').format(dateValue)}'),
          ElevatedButton(
              onPressed: timePicker, child: const Text('timePicker')),
          Text('time: ${timeValue.hour}:${timeValue.minute}'),
        ],
      ),
    );
  }
}
