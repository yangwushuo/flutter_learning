class Person {
  static String name = "jason yangwushuo";
  static void printName() {
    print(name);
  }

  // 内部使用静态方法
  void testName() {
    print('${name}');
  }
}

void main(List<String> args) {
  // 访问类静态变量
  print(Person.name);
  // 访问类静态方法
  Person.printName();
  // 调用内部方法使用内部静态变量
  Person().testName();
}
