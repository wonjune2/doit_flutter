// void some1() {}

// void some2() {
//   void some3() {}
//   some3();
// }

class MyClass {
  void some4() {}
  // void some4(int a) {

  // }
}

void some1(int? a) {}

main() {
  // some2();
  some2(10);
  some2('hello');
}

void some2(var a) {
  a = 20;
  a = 'world';
  a = true;
  a = null;
}
