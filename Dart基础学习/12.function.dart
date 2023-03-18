// 定义 普通函数定义
int add(int x) {
  return x + 1;
}

// 可选参数函数
int add1(int x, [int? y, int? z]) {
  if (y == null) {
    y = 1;
  }
  if (z == null) {
    z = 1;
  }
  return x + y + z;
}

// 可选参数默认值
int add2(int x, [int y = 1, int z = 1]) {
  return x + y + z;
}

// 命名参数默认值
int add3(int x, {int y = 1, int z = 2}) {
  return x + y + z;
}

// 函数内定义
int add4(int x) {
  int add41(int y ) {
    return x + 1;
  }

  return add41(x);
}

// Funcation 返回函数对象
Function makeAdd(int x){
  return (int x){
    return x+1;
  };
}

bool topLevel = true;
void test(){
  var insideMain = true;

  void myFunction() {
    var insideFunction = true;

    // 注意 nestedFunction() 函数可以访问包括顶层变量在内的所有的变量
    void nestedFunction() {
      var insideNestedFunction = true;

      assert(topLevel);
      assert(insideMain);
      assert(insideFunction);
      assert(insideNestedFunction);
    }
  }
}


void main(List<String> args) {

  // 匿名函数 下面代码定义了只有一个参数 item 且没有参数类型的匿名方法。 List 中的每个元素都会调用这个函数，打印元素位置和值的字符串：
  const list = ['apples', 'bananas', 'oranges'];
  list.forEach((item) {
    print('${list.indexOf(item)}: $item');
  });

}
