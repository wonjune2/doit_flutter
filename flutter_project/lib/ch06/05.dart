class MyClass {
  final int data1;
  const MyClass(this.data1);
}

void main(List<String> args) {
  var obj1 = const MyClass(10);
  var obj2 = const MyClass(10);

  print(obj1 == obj2);

  var obj3 = const MyClass(10);
  var obj4 = const MyClass(10);

  print(obj3 == obj4);
}
