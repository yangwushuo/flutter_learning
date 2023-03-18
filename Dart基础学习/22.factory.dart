// 工厂函数

abstract class Phone {
  void call();
  factory Phone(String type) {
    if (type == 'Android') {
      return Android();
    } else if (type == 'Ios') {
      return Ios();
    }
    throw "未知手机型号:${type}";
  }
}

class Android implements Phone {
  @override
  void call() {
    print("Android Calling");
  }
}

class Ios implements Phone {
  @override
  void call() {
    print("Ios Calling");
  }
}

// 工厂函数使用单例模式
class Person {
  static Person _instance = Person._internal();

  // 私有的命名构造函数
  Person._internal();

  factory Person() {
    if (_instance == null) {
      _instance = Person._internal();
    }

    return _instance;
  }

  void call() {
    print('call ...');
  }
}

// 减少重复实例本身
class Student {
  int _id;
  Student(this._id);

  factory Student.fromJson(Map<String, dynamic> json) {
    return Student(json['number'] as int);
  }

  void call() {
    print('这是学号:${this._id}');
  }
}

void main(List<String> args) {
  var android = Phone('Android');
  android.call();
  var ios = Phone('Android');
  ios.call();
  // var other = Phone('huawei');
  // other.call();

  var person1 = Person();
  var person2 = Person();
  print(identical(person1, person2)); // true
  person1.call();

  var student = Student.fromJson({'number': 1});
  student.call();
}
