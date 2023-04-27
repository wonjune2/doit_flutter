class User {
  void some() {
    print('User...some()');
  }
}

void main(List<String> args) {
  Object obj = User();

  if (obj is User) {
    obj.some();
  }

  Object obj1 = User();

  (obj1 as User).some();
}
