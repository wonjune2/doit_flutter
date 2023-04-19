void main(List<String> args) {
  int? no1 = 10;
  bool? result1 = no1.isEven;

  no1 = null;
  bool? result2 = no1?.isEven;

  List<int>? list = [10, 20, 30];
  list = null;
  list?[0];

  int? data3;
  data3 ??= 10;

  String? data4 = 'hello';
  String result = data4 ?? 'world';

  data4 = null;
  result = data4 ?? 'world';
}
