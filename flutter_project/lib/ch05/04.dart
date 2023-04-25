// // void some() {}
// Function data2 = some;

// int plus(int no) {
//   return no + 10;
// }

// int multiply(int no) {
//   return no * 10;
// }

// Function testFun(Function argFun) {
//   print('argFun: ${argFun(20)}');
//   return multiply;
// }

// some(int Function(int a) f) {
//   f(30);
// }

// void main(List<String> args) {
//   some((int a) {
//     return a + 20;
//   });
// }

fun1(arg) {
  return 10;
}

Function fun2 = (arg) {
  return 10;
};

some(int f(int a)) {
  f(30);
}

int test(int a) {
  return a;
}

void main(List<String> args) {
  some(test);
}
