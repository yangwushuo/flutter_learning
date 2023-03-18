void main(List<String> args) {
  // 初始List是一个有序列表
  var list = [1, 2, 3];
  print(list);

  // 声明
  // 自动
  List<int> l = [];
  l
    ..add(1)
    ..add(2)
    ..addAll([1, 2, 2]);
  print(l); // [1, 2, 1, 2, 2]

  // 定长
  var l1 = List<int>.filled(3, 0); // 第一个参数是长度，第二个每个默认值 [0, 0, 0]
  print(l1);

  // 生成数据
  var l2 = List<int>.generate(
      5, (index) => index); // 第一个参数是长度 第二个参数是生成规则 [0, 1, 2, 3, 4]
  print(l2);

  /* 属性
    isEmpty	是否为空
    isNotEmpty	是否不为空
    first	第一个对象
    last	最后一个对象
    length	个数
    reversed	反转
  */

  var l3 = [1, 2, 3];
  print(l3.first);
  print(l3.last);
  print(l3.length);
  print(l3.isEmpty);
  print(l3.isNotEmpty);
  print(l3.reversed);

  /* 方法
    add	添加
    addAll	添加多个
    insert	插入
    insertAll	插入多个
    indexOf	查询
    indexWhere	按条件查询
    remove	删除
    removeAt	按位置删除
    fillRange	按区间填充
    getRange	按区间获取
    shuffle	随机变换顺序
    sort	排序
    sublist	创建子
  */
  // 添加
  List<int> l4 = [];
  l4.add(2);
  print(l4);
  l4.addAll([3, 3, 3]);
  print(l4);
  l4.insert(3, 6);
  print(l4);
  l4.insertAll(3, [333, 333]);
  print(l4);

  // 查询
  print(l4.indexOf(5));
  print(l4.indexWhere((it) => it == 4)); // 查询等于4的值的索引下标

  // 删除
  l4.remove(6); // 第六个数
  print(l4);
  l4.removeAt(5); // 下标5
  print(l4);

  // Range
  l4.fillRange(0, 3, 9); // 起始 0 下标2 填充 9
  print(l4.getRange(0, 5)); // 起始 0 下标4 获取

  // 排序
  var l5 = [6, 1, 2, 3, 4, 5, 6, 6];
  l5.sort(); // 升序
  print(l5); // [1, 2, 3, 4, 5, 6, 6, 6]

  // 排序日期
  List<DateTime> dtList = [];
  dtList.addAll([
    DateTime.now(),
    DateTime.now().add(new Duration(days: -12)),
    DateTime.now().add(new Duration(days: -2))
    ]);
  print(dtList); // [2023-03-18 01:55:03.682688, 2023-03-06 01:55:03.682688, 2023-03-16 01:55:03.682688]

  dtList.sort((a, b) => a.compareTo(b));
  print(dtList); // [2023-03-06 01:55:03.682688, 2023-03-16 01:55:03.682688, 2023-03-18 01:55:03.682688]

  // 复制子列表
  var l6 = [6, 1, 2, 3, 4, 5, 6, 6];
  var l7 = l6.sublist(1,4); // 起始下标1 结束下标3
  print(l7);

  // 操作符
  var l8 = [1, 2, 3];
  var l9 = [4, 5, 6];
  print(l8 + l9);  //[1, 2, 3, 4, 5, 6]
  l8[2] = 9;
  print(l8[2]);
}
