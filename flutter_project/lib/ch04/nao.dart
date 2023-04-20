int? a1 = 20;

void main(List<String> args) {
  a1!;
  a1 = null;
  a1!;
  int a = some(10)!;
  int b = some(20)!;
}

int? some(arg) {
  if (arg == 10) {
    return 0;
  } else {
    return null;
  }
}
