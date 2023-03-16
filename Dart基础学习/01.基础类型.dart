void main(List<String> args) {
  // 弱类型 var Object dynamic
  var a;
  // var a = ""; // 一旦赋值，就确定类型，不能随意改动
  a = 'ducafecat';
  a = 123;
  a = true;
  a = {'key': 'val123'};
  a = ['abc'];
  print(a[0]);

  // Object 动态任意类型 编译阶段检查类型
  Object b = 'abababababa';
  b = 123;
  b = [222222];
  print(b);

  // dynamic 动态任意类型 编译阶段不检查类型
  dynamic c = 'docucafeat';
  c = 123;
  c = [1111];
  print(c);

  // 比较 var dynamic Object
  // 唯一区别var如果有初始值 类型被锁定
  var d = 'ducafa';
  dynamic e = 'adsfad';
  Object f = 'adfadfa';
  // 报错 d = 123; //A value of type 'int' can't be assigned to a variable of type 'String'. 相同类型可以赋值
  d = '111';
  print(d);

  // 强类型 申明类型 声明后类型被锁定
  String t;
  t = 'aadsfadsfa';
  // t = 134; A value of type 'int' can't be assigned to a variable of type 'String'.
  print(t);

  /*

      常见类型
        num	数字
        int	整型
        double	浮点
        bool	布尔
        String	字符串
        StringBuffer	字符串 buffer
        DateTime	时间日期
        Duration	时间区间
        List	列表
        Sets	无重复队列
        Maps	kv 容器
        enum	枚举

  */
  String i = 'qewrqw222';
  int j = 123;
  double q = 1234.3;
  bool l = true;
  DateTime dt = new DateTime.now();
  List list = [i, j, q, l, dt];
  print(list);

  // 默认值 变量声明后默认都是null;
  var aVar;
  String aString;
  print(aVar);
  // print(aString); // Non-nullable variable 'aString' must be assigned before it can be used.
  assert(aVar == null); // true;  assert 检查点函数，如果不符合条件直接抛出错误并终止程序进程

  // 使用场景
  // var 简化定义变量
  var map = <String, dynamic>{};  // 如果不写成var 就必须使用相对类型 就要写成 Map<String, dynamic>
  map['image'] = '333333';
  map["title"] = 1111;
  map["desc"] = 222.3;
  print(map);

  // 查询参数定义
  // api查询通常接口封装的时候 我们一般使用动态类型 Map<String, dynamic>? queryParameters, 查询参数值是动态
  // Future<Response<T>> get<T>(){
  //   String path, {
  //     Map<String, dynamic> queryParameters
  //   }
  // }

  // 返回的实例对象 如分类实例定义 int id; String name; 明确类型
  //   class Category {
  //   int id; // 数字 id
  //   String name; // 字符串 分类名称
  //   String slug;

  //   Category({this.id, this.name, this.slug});

  //   ...
  // }

}
