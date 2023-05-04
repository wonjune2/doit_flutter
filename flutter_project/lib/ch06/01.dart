class User {
  String name = 'kkang';
  int age = 10;

  void sayHello() {
    print('Hello $name, age: $age');
  }
}

class MyClass {
  String data1 = 'hello';
  static String data2 = 'hello2';

  myFun1() {
    print('myFun1 call....');
  }

  static myFun2() {
    print('myFun2 call....');
  }
}

void main(List<String> args) {
  User user1 = User()
    ..sayHello()
    ..name = 'kim'
    ..age = 20;

  MyClass.data2 = 'world';
}
