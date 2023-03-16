void main(List<String> args) {
  // 相同点
  final String a = '11234';
  final b = 'adsfawsdf';

  const String c = 'qwerqwer';
  const d = '1234dasf';

  print('$a $b $c $d');

  // 初始化后不能再赋值
  final e = 'ducafeact';
  // e = '12341ad';
  const f = 'qwerqxcsa';
  // f = 'awerdasfs';

  // 不能和var同时使用
  // final var g = 'aerqwer';
  // const var t = 'qwerzds';

  //  不同点
  // 需要确定的值
  final dt = DateTime.now(); // 不需要确定值
  //const dt = DateTime().now(); // 需要确定值

  // 不可变性可传递
  final List ls = [11, 22, 33];
  ls[1] = 11;

  const List lc = [11, 22, 33];
  // lc[1] = 233;//  无法修改不可修改的列表 Cannot modify an unmodifiable list

  print('$ls, $lc');

  // 内存中重复创建
  final a1 = [11, 22];
  final a2 = [22, 33];
  print(identical(a1, a2)); // a1 a2 所创建的内存地址不一样 false

  const b1 = [11, 22];
  const b2 = [11, 22];
  print(identical(b1, b2)); // b1 b2 内存所创建的地址一样 产生服用 true

  // 使用场景

  // final 成员变量初始
  // class PlaceholdWidget extends StatelessWidget {

  // final String? assetImagePath;

  // const PlaceholdWidget({
  //   Key? key,
  //   this.assetImagePath,
  // }) : super(key: key);

  // @override
  // Widget build(BuildContext context) {
  //   ...
  // }

  // const 全局参数 // 常用于全局不变的值定义
  // 本地存储key
  // static const storageFirstOpen = 'first_open';
  // static const storageLanguageCode = 'language_code';
  // static const storageThemeCode = 'theme_code';
  // static const storageToken = 'token';
  // static const storageProfile = 'profile';


}
