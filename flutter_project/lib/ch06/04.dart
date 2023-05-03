class MyClass {
  MyClass._instance();
  factory MyClass() {
    return MyClass._instance();
  }
}

class Image {
  late String url;
  static final Map<String, Image> _cache = <String, Image>{};
  Image._intance(this.url);
  factory Image(String url) {
    if (_cache[url] == null) {
      var obj = Image._intance(url);
      _cache[url] = obj;
    }
    return _cache[url]!;
  }
}
