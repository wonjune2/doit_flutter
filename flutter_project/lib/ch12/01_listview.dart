import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class User {
  String name;
  String phone;
  String email;
  User(this.name, this.phone, this.email);
}

class MyApp extends StatelessWidget {
  List<User> users = [
    User('홍길동', '010001', 'asda@asd.com'),
    User('김길동', '110001', 'ㅠsda@asd.com'),
    User('박길동', '210001', 'ㅊda@asd.com'),
    User('수길동', '310001', 'ㅇda@asd.com'),
  ];
  MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Test'),
        ),
        body: ListView.separated(
          itemBuilder: (context, index) {
            return ListTile(
              leading: const CircleAvatar(
                radius: 25,
                backgroundImage: AssetImage('images/big.jpeg'),
              ),
              title: Text(users[index].name),
              subtitle: Text(users[index].phone),
              trailing: const Icon(Icons.more_vert),
              onTap: () {
                print(users[index].name);
              },
            );
          },
          separatorBuilder: (context, index) {
            return const Divider(
              height: 2,
              color: Colors.black,
            );
          },
          itemCount: users.length,
        ),
      ),
    );
  }
}
