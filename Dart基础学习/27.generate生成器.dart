// 同步生成器
Iterable<int> naturalsTo(int n) sync* {
  print('start');
  while (n > 0) {
    // yield 会先返回值给调用方， 等调用完成再返回回来执行下一步 yield 会等待 moveNext 指令
    yield n--;
  }
  print('end');
}

// 异步生成器
Stream<int> asynchronousNaturalsTo(int n) async* {
  print('start');
  while (n > 0) {
    yield n--;
  }
  print('end');
}

// 递归生成器
Iterable<int> naturalsDownFrom(int n) sync* {
  print('start');
  while (n > 0) {
    yield n;
    // 递归调用
    yield* naturalsDownFrom(n - 1);
  }
  print('end');
}

void main(List<String> args) {
  // 使用同步生成器
  var it = naturalsTo(5).iterator;
  while (it.moveNext()) {
    print(it.current);
  }

  // 使用异步生成器 生成监听
  asynchronousNaturalsTo(5).listen((event) {
    print(event);
  });
  print('666666'); // 优于异步

  // 使用递归生成器
  var it1 = naturalsTo(5).iterator;
  while (it1.moveNext()) {
    print(it1.current);
  }
}
