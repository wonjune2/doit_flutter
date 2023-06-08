import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() {
  runApp(const MyWidget());
}

class MyWidget extends StatelessWidget {
  const MyWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(brightness: Brightness.light),
      home: const Scaffold(
          resizeToAvoidBottomInset: false,
          body: SafeArea(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Expanded(
                  child: Column(
                    children: [
                      Expanded(flex: 2, child: MyCuperTino()),
                      Spacer(
                        flex: 1,
                      ),
                      Spacer(
                        flex: 1,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          )),
    );
  }
}

class MyCuperTino extends StatefulWidget {
  const MyCuperTino({super.key});

  @override
  State<MyCuperTino> createState() => _MyCuperTinoState();
}

class _MyCuperTinoState extends State<MyCuperTino> with WidgetsBindingObserver {
  final FocusNode _focusNode = FocusNode();

  int currentIndex = 0;
  FixedExtentScrollController scrollController =
      FixedExtentScrollController(initialItem: 0);
  List<Text> cupertinoItems = List<Text>.generate(
    10,
    (index) => Text('${index + 1}'),
  );

  void moveToItem(int index) {
    scrollController.animateToItem(index,
        duration: const Duration(milliseconds: 500), curve: Curves.easeInOut);
  }

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addObserver(this);
  }

  @override
  void dispose() {
    super.dispose();
    _focusNode.dispose();
  }

  void onActive(int index) {
    cupertinoItems[index] = Text(
      cupertinoItems[index].data!,
      style: const TextStyle(
        color: Colors.orange,
      ),
    );
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          child: CupertinoPicker(
            magnification: 1.22,
            squeeze: 1.2,
            useMagnifier: true,
            itemExtent: 32.0,
            selectionOverlay: null,
            // This sets the initial item.
            scrollController: scrollController,
            // This is called when selected item is changed.
            onSelectedItemChanged: (int selectedItem) {
              _focusNode.unfocus();
              currentIndex = selectedItem;
            },

            children: List<Widget>.generate(
              10,
              (index) => GestureDetector(
                onTap: () {
                  _focusNode.unfocus();
                },
                child: cupertinoItems[index],
              ),
            ),
          ),
        ),
        TextField(
          focusNode: _focusNode,
          textInputAction: TextInputAction.previous,
        ),
        TextButton(
          onPressed: () {},
          child: const Text('dada'),
        ),
        TextButton(
          onPressed: () {
            SystemChannels.textInput.invokeMethod('TextInput.show');
          },
          child: const Text('cancel'),
        ),
      ],
    );
  }
}
