void main(List<String> args) {
  // 初始
  // key value 形式的集合，也叫键值对。
  var a = {'name': 'ducafecat', 'web': 'www.ducafecat.tech'};
  print(a);

  // 声明松散型
  var b = Map(); // key value都没有类型限制
  b['name'] = 'ducafecat';
  b['web'] = 'www.ducafecat.tech';
  b[0] = 'abc';
  b[0] = '1231231';
  print(b); // {name: ducafecat, web: www.ducafecat.tech, 0: 1231231}

  // 强类型
  var c = Map<String, String>();
  // c[0] = 'java'; // key 类型错误
  // c[1] = 'python';
  c["name"] = "yangwushuo";
  print(c);

  /*
    基本数据类型
    isEmpty	是否为空
    isNotEmpty	是否不为空
    keys	key 集合
    values	values 集合
    length	个数
    entries	加工数据入口
  */
  var d = {'name': 'ducafecat', 'web': 'www.ducafecat.tech'};
  print(d.isEmpty);
  print(d.isNotEmpty);
  print(d.keys); // 键集合
  print(d.values); // 值几何
  print(d.length);
  print(d
      .entries); // (MapEntry(name: ducafecat), MapEntry(web: www.ducafecat.tech))

  /*
    方法使用
    addAll	添加
    addEntries	从入口添加
    containsKey	按 key 查询
    containsValue	按 value 查询
    clear	清空
    remove	删除某个
    removeWhere	按条件删除
    update	更新某个
    updateAll	按条件更新
  */
  d.addAll({'a': 'yangwushuo'});
  d.addEntries(a.entries);
  print(d.containsKey('a'));
  print(d.containsValue('a'));
  d.clear();
  d.remove('a');
  d.removeWhere((key, value) => false);
  d.update('a', (value) => '1');
  d.updateAll((key, value) => 'null');
}
