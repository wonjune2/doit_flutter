void main(List<String> args) {
  var list = [10, 20, 30];
  for (var x in list) {
    print(x);
  }
}

some(arg) {
  switch (arg) {
    case 'A':
      print('A');
      break;
    case 'B':
      print('B');
  }
}
