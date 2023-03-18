abstract class Person {
  String name;

  Person(name) : this.name = name;

  void printName() {
    print(name);
  }
}

// 通过extends继承抽象类
class NewPerson extends Person {
  NewPerson(name) : super(name);

  @override
  void printName() {
    // TODO: implement printName
    super.printName();
  }
}

abstract class Person1 {
  String name = '';
  void printName();
}

// 通过implements
class OldPerson implements Person1 {
  // 重写所有方法和属性
  @override
  String name;

  OldPerson(name) : this.name = name;

  @override
  void printName() {
    print(this.name);
  }
}

void main(List<String> args) {
  // 不能直接new实例化
  // var p = Pserson();
  // p.printName;

  // 继承方式使用
  var p = NewPerson("jaso");
  p.printName();

  // 接口方式使用
  var p1 = OldPerson("jason");
  p1.printName();
}
