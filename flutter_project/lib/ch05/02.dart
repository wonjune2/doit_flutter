// void some(int a, String b, bool c) {}

// void some({String? data1}) {
//   print(data1);
// }

void some(int data1, {String? data2, bool? data3}) {}

String myFun({String data = 'hellp'}) {
  return data;
}

someFun({required int arg1}) {
  print('someFun()..arg1 : $arg1');
}

void main(List<String> args) {
  // print('myFun() result : ${myFun()}');
  someFun(arg1: 10);
}
