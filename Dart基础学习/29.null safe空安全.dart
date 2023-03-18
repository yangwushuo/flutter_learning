// 空安全 减少数据异常错误 提高程序性能
// 默认不可空
// String title;
String title = "dfadfa";

void main(List<String> args) {
  // type? 可空
  String? title;
  // value! 加感叹号保证不为空 主观上
  // String? title1 = '134123';
  // String newTitle = title1!;

  // value?. 不为空才执行
  String? title2 = '1234123';
  bool isEmpty = title2?.isEmpty();

  // value?? 如果空执行 给默认值
  String? title3 = 'ducafecat';
  String newTitle = title3 ?? 'cat';

  // late 声明
  // 延迟加载修饰符
  // 声明一个不可空的变量，并在声明后初始化。
  late String description;
  description = 'Feijoada!';
  print(description);

  List<String?>? l;
  l = [];
  l.add(null);
  l.add('a');
  print(l);

  Map<String, String?>? m;
  m = {};
  m['a'] = 'b';
  m['b'] = null;
  print(m);

}
