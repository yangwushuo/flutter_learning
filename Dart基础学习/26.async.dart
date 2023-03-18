import 'dart:io';

Future<String> testAsync() {
  return Future.value("hello world");
}

void main(List<String> args) async {
  // 第一种使用 await方式
  var res = await testAsync();
  print(res);

  // 第二种使用then方式
  testAsync().then((value) => {print(value)});
}
