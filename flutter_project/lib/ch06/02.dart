class User {
  late String name;
  late int age;
  User(String name, int age) {
    this.name = name;
    this.age = age;
  }

  sayHello() {
    print('name: $name, age: $age');
  }
}

class MyClass {
  late int data1;
  late int data2;

  MyClass(List<int> args)
      : data1 = args[0],
        data2 = args[1];
}
