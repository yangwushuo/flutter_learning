// Dart 没有接口
// 接口方式使用
// 第一个种写法抽象类接口
abstract class IPerson {
  String? name;
  int? age;

  IPerson(this.name, this.age);

  String info() {
    return 'name:${name};age:${age}';
  }
}

// 第二种写法类接口
class ISchool {
  String? schoolName;

  String schoolNameInfo() {
    return 'schoolName:${schoolName}';
  }
}

class Student implements IPerson, ISchool {
  @override
  String? name;
  @override
  int? age;
  @override
  String? schoolName;

  Student(this.name, this.age, this.schoolName);

  @override
  String info() {
    return 'name:${name};age:${age}';
  }

  @override
  String schoolNameInfo() {
    return 'schoolName:${schoolName}';
  }
}

void makePersonInfo(IPerson person) {
  print(person.info());
}

void makeSchoolInfo(ISchool school) {
  print(school.schoolNameInfo());
}

void main(List<String> args) {
  var student = Student('jason', 23, '清华大学');
  makePersonInfo(student);
  makeSchoolInfo(student);
}
