// class User {
//   void some() {
//     print('User...some()');
//   }
// }

// void main(List<String> args) {
//   Object obj = User();

//   if (obj is User) {
//     obj.some();
//   }

//   Object obj1 = User();

//   (obj1 as User).some();
// }

class User {
  String? name;
  int? age;

  some() {
    print('name: $name, age: $age');
  }
}

void main(List<String> args) {
  var user = User()
    ..name = 'kkang'
    ..age = 30
    ..some();
}
