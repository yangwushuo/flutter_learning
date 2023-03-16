void main(List<String> args) {
  //   int
  // 整数值，其取值通常位于 -253 和 253 之间。
  // int class
  // double
  // 64-bit (双精度) 浮点数，符合 IEEE 754 标准。
  // double class
  // num
  // int 和 double 都是 num 的子类。
  // num class

  // 十进制 十六进制
  int a = 1001;
  int b = 0xF;
  print([a, b]); //[1001, 15]

  // 科学计数法
  num c = 2e3;
  print([c]); //[2000.0]

  // 数值转换
  // string -> int
  // string -> double
  int e = int.parse('123');
  double f = double.parse('1.223');

  // int -> string
  // double -> string
  String g = 123.toString();
  String q = 1.223.toString();
  print([g, q]);

  // double -> int
  double u = 1.8;
  int w = u.toInt();
  print(w);

  // 位运算
  // & 与运算
  var a1 = 10;
  var b1 = 2;
  print(a1 & b1); // 2 1010与0010得0010为2
  // | 或运算
  var a2 = 10;
  var b2 = 2;
  print(a2 | b2); // 10 1010或0010得01010 10

  // 示例
  const USE_LEFT = 0x1;
  const USE_TOP = 0x2;
  const USE_LEFT_TOP = USE_LEFT | USE_TOP;
  var result = USE_LEFT | USE_TOP;
  print(result);
  assert(USE_LEFT_TOP == result);

  // 非运算
  var a3 = 9;
  print(~a3);
  // 0 1 0 0 1          +9 二进制 最高位 0 整数 1 负数
  // 0 0 1 1 0          补码
  // 1 1 0 0 1          取反
  // 1 1 0 1 0          加1

  // ^ 异或 // 相同为0不同为1
  var a4 = 10;
  var b4 = 2;
  print(a4 ^ b4);
  // 1 0 1 0          10
  // 0 0 1 0          2
  // --------
  // 1 0 0 0          8

  // 移位运算符 << 左移  >> 右移
  var a5 = 1 << 1; // 0010 << 0001
  print(a5);
  var a6 = 1 >> 1; // 0010 >> 0001
  print(a6);
  var a7 = 8 >> 1; // 1000 >> 0100
  print(a7);
}
