void main(List<String> args) {
  // 单引号或双引号
  String a = 'asdfad';
  String b = "asdfad";
  // 区别转义分隔符
  final myString1 = 'Bob\'s dog'; // Bob's dog
  final myString2 = "a \"quoted\" word"; // a "quoted" word
  print(myString1);
  print(myString2);

  final myString3 = "Bob's dog"; // Bob's dog
  final myString4 = 'a "quoted" word'; // a "quoted" word
  print(myString3);
  print(myString4);

  final value = '"quoted"'; // "quoted"
  final myString6 = "a $value word"; // a "quoted" word
  print(myString6);

  // 字符串模板
  var a1 = 123;
  String b1 = 'ducaasdf: $a1';
  print(b1);

  // 字符串连接
  var a2 = 'hello' + ' ' + 'ducafecat';
  var a3 = 'hello' ' ' 'ducafecat';
  var a4 = 'hello' ' ' 'ducafecat';

  var a5 = 'hello'
      ' '
      'ducafecat';

  var a6 = '''
    hello word
    this is multi line
  ''';

  var a7 = """
    hello word
    this is multi line
  """;

  print(a);

  // 转义字符
  var a8 = 'hello word \n this is multi line';
  print(a8);  
  // 取消转义
  var a9 = r'hello word \n this is multi line';
  print(a9);

  // 搜索
  var c = 'web site ducafecat.tech';
  print(c.contains('ducafecat')); // 包含
  print(c.startsWith('web')); // 其实字符
  print(c.endsWith('tech')); // 结束字符
  print(c.indexOf('site')); // 包含返回索引

  // 提取数据
  var d = 'web site ducafecat.tech';
  print(d.substring(0,5)); // 0-4下标字符
  var e = a.split(' '); // 分割
  print(e.length); // 长度
  print(e[0]);

  // 大小写转换
  print(a.toLowerCase());
  print(a.toUpperCase());

  // 裁剪 判断空字符串
  print('    hello word     '.trim());
  print(''.isEmpty);

  // 替换部分字符
  print('hello word word!'.replaceAll('word', 'ducafecat'));

  // 字符串缓冲创建
  var sb = StringBuffer();
  sb..write('hello word!')
  ..write('my')
  ..write(' ')
  ..writeAll(['web', 'site', 'https://ducafecat.tech']);
  print(sb.toString());

}
