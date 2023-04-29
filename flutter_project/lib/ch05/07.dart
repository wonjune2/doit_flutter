// void main(List<String> args) {
//   var list = [10, 20, 30];
//   for (var x in list) {
//     print(x);
//   }
// }

// some(arg) {
//   switch (arg) {
//     case 'A':
//       print('A');
//       break;
//     case 'B':
//       print('B');
//   }
// }

some() {
  throw const FormatException('my exception');
}

void main(List<String> args) {
  try {
    print('step1...');
    some();
  } on FormatException {
    print('step3');
  } on Exception {
    print('step4');
  } finally {
    print('step5');
  }
  print('step6');

  try {
    print('step1...');
    some();
  } on FormatException catch (e) {
    print(e);
  } on Exception catch (e) {
    print('step4 $e');
  } finally {
    print('step5');
  }
}
