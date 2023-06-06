import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyCuperTino());
}

class MyCuperTino extends StatefulWidget {
  const MyCuperTino({super.key});

  @override
  State<MyCuperTino> createState() => _MyCuperTinoState();
}

class _MyCuperTinoState extends State<MyCuperTino> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(child: const Text('asdas')),
    );
  }
}

class Com extends StatelessWidget {
  // final List<Text> items;

  const Com({super.key});

  @override
  Widget build(BuildContext context) {
    return CupertinoPicker(
      magnification: 1.22,
      squeeze: 1.2,
      useMagnifier: true,
      itemExtent: 32.0,
      // This sets the initial item.
      scrollController: FixedExtentScrollController(
        initialItem: 0,
      ),
      // This is called when selected item is changed.
      onSelectedItemChanged: (int selectedItem) {},
      children: const [
        Text('data'),
        Text('data'),
        Text('data'),
      ],
    );
  }
}
