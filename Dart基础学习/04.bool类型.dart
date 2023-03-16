void main(List<String> args) {
  // 布尔值 为了代表布尔值，Dart 有一个名字为 bool 的类型。 只有两个对象是布尔类型的：true 和 false 所创建的对象， 这两个对象也都是编译时常量。
  String name = 'ducafecat'; // 只有 true 对象才被认为是 true。 所有其他的值都是 flase。
  // if (name) {
  //   print('this is name');
  // }

  var a1 = true;
  assert(a1);

  var name1 = '';
  assert(name.isEmpty);
  assert(name.isNotEmpty);

  var num = 0 / 0;
  assert(num.isNaN);

  bool a = true;
  bool b = true;
  assert(a && b);

  bool a2 = true;
  bool b2 = false;
  assert(a2 || b2);

  bool a3 = true;
  bool b3 = !a2;
  print(b3);

  if (a == b) {}
  if (a != b) {}
}
