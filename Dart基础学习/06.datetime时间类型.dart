void main(List<String> args) {
  // 声明
  // 当前时间
  var now = new DateTime.now();
  print(now);

  // 指定时间
  var d = new DateTime(2018, 10, 10, 9, 30);
  print(d);

  // 创建时间 UTC协调世界时间 原子时 原子钟 时区表 https://ducafecat.oss-cn-beijing.aliyuncs.com/podcast/20220528200356.png

  // 创建 utc 时间
  var e = new DateTime.utc(2018, 10, 10, 9, 30);
  print(e);

  // 解析IOS 8601
  var d1 = DateTime.parse('2018-10-10 09:30:30Z');
  print(d1);

  var d2 = DateTime.parse('2018-10-10 09:30:30+0800'); // 中国时间0800
  print(d2);

  // 时间增量
  var d3 = DateTime.now();
  print(d3);
  print(d3.add(new Duration(minutes: 5))); // 加五分钟
  print(d3.add(new Duration(minutes: -5))); // 减五分钟

  // 时间比较
  var d5 = new DateTime(2018, 10, 1);
  var d6 = new DateTime(2018, 10, 10);
  print(d5.isAfter(d6)); // 判断是否在之后
  print(d5.isBefore(d6)); // 判断是否在之前

  var d7 = DateTime.now();
  var d8 = d7.add(new Duration(milliseconds: 30)); // 加三十秒
  print(d8);

  // 时间差
  var d11 = new DateTime(2018, 10, 1);
  var d22 = new DateTime(2018, 10, 10);
  var difference = d11.difference(d22);
  print([difference.inDays, difference.inHours]); // 差多少天 差多少小时 [-9, -216]

  // 时间戳
  var ts = new DateTime.now(); 
  print(ts.millisecondsSinceEpoch); // 精确毫秒
  print(ts.microsecondsSinceEpoch); // 精确微秒

}
