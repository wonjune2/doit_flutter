int a1 = 10;
int? a2 = 10;

void main(List<String> args) {
  a1 = a2 as int;
  a2 = a1;
}
