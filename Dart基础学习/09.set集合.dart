void main(List<String> args) {
  // 声明 Set是一个元素唯一的有序队列
  // 松散类型
  var a = Set();
  a.add('java');
  a.add('php');
  a.add('html');
  a.add('js');
  print(a);

  // 强类型
  a.addAll(['dart', 'c#', 'j#', 'java']);
  print(a);

  // 去重 转列表
  var ls = ['dart', 'java', 'c#', 'j#', 'e#', 'java'];
  var tags = Set();
  tags.addAll(ls);
  print(tags);
  print(tags.toList());

  /*
    基本属性
    isEmpty	是否为空
    isNotEmpty	是否不为空
    first	第一个
    last	最后一个
    length	个数
  */
  /*
    基本方法
    addAll	添加
    contains	查询单个
    containsAll	查询多个
    difference	集合不同
    intersection	交集
    union	联合
    lookup	按对象查询到返回对象
    remove	删除单个
    removeAll	删除多个
    clear	清空
    firstWhere	按条件正向查询
    lastWhere	按条件反向查询
    removeWhere	按条件删除
    retainAll	只保留几个
    retainWhere	按条件只保留几个
  */
    // a.addAll(['dart', 'c#', 'j#', 'e#']);
    // print(a.contains('dart'));
    // print(a.containsAll(['dart', 'swift']));
    // print('a => $a');
    // print(a.difference(a));
    // print(a.intersection(a));
    // print(a.lookup('dart'));
    // print(a.union(a));
    // a.remove('dart');
    // a.removeAll(['dart','c#']);
    // a.clear();
    // print(a.firstWhere((it) => it == 'c#'));
    // print(a.lastWhere((it) => it == 'c#'));
    // a.removeWhere((it) => it == 'c#');
    // a.retainAll(['e#']);
    // a.retainWhere((it) => it == 'e#');
    // a.retainWhere((it) {
    //   var ret = it == 'e#';
    //   return ret;
    // });
  
    // 交集
    var fd = <String>{"js", "node", "dart", "css", "html", "macos", "docker", "git"};
    var ed = <String>{"linux", "docker", "git", "go", "python", "sql", "node", "js", "aws"};
    print(fd.intersection(ed));

    // 联合 并且去重
    var fd1 = <String>{"js", "node", "dart", "css", "html", "macos", "docker", "git"};
    var ed1 = <String>{"linux", "docker", "git", "go", "python", "sql", "node", "js", "aws"};
    print(fd.union(ed));

}
