import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class MyDataModel with ChangeNotifier {
  int data1 = 0;
  int data2 = 10;

  void changeData1() {
    data1++;
    notifyListeners();
  }

  void changeData2() {
    data2++;
    notifyListeners();
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
            ChangeNotifierProvider<MyDataModel>.value(value: MyDataModel())
          ],
          child: const HomeWidget(),
        ),
      ),
    );
  }
}

class HomeWidget extends StatelessWidget {
  const HomeWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.red,
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Consumer<MyDataModel>(
              builder: (context, value, child) {
                return Container(
                  color: Colors.green,
                  padding: const EdgeInsets.all(20),
                  child: Center(
                    child: Text(
                      'consumer, data1: ${value.data1}, data2: ${value.data2}',
                      style: const TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                  ),
                );
              },
            ),
            Selector<MyDataModel, int>(
              builder: (context, value, child) {
                return Container(
                  color: Colors.cyan,
                  padding: const EdgeInsets.all(20),
                  child: Center(
                    child: Text(
                      'selector, data:$value',
                      style: const TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                  ),
                );
              },
              selector: (context, model) => model.data2,
            ),
            Column(
              children: [
                ElevatedButton(
                  onPressed: () {
                    var model1 =
                        Provider.of<MyDataModel>(context, listen: false);
                    model1.changeData1();
                  },
                  child: const Text('model data1 change'),
                ),
                ElevatedButton(
                  onPressed: () {
                    var model1 =
                        Provider.of<MyDataModel>(context, listen: false);
                    model1.changeData2();
                  },
                  child: const Text('model data2 change'),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
