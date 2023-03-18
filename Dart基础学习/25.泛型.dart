// 泛型基本使用 箭头内可以多个定义
class Student<A, B, C, D> {
  A? name;
  B? age;
  A? address;
  A? sex;

  Student(this.name, this.age, this.address, this.sex);

  A info() {
    return '${name}:${age}:${address}:${sex}' as A;
  }
}

// 泛型限制
class AndroidPhone {
  void startup() {
    print('Android Phone 开机');
  }
}

class Phone<T extends AndroidPhone> {
  final T mobile;
  Phone(this.mobile);
}

// 泛型函数
T computer<T>(T num1, T num2) {
  return num1;
}

class School {}

void main(List<String> args) {
  // 基本提供
  var l = <String>[];
  l.add('aaa');
  l.add('bbb');
  l.add('ccc');
  print(l);

  var m = <int, String>{};
  m[1] = 'aaaa';
  m[2] = 'bbbb';
  m[3] = 'cccc';
  print(m);

  var res = computer<int>(1, 1);
  print(res);

  var student = Student<String, int, double, bool>('jason', 23, '南京市', '男');
  print(student.info());

  var android = AndroidPhone();
  var phone = Phone<AndroidPhone>(android);
  phone.mobile.startup();
}
