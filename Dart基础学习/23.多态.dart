class Phone {
  void call() {
    print('Phone is calling...');
  }
}

class Ios {
  void call() {
    print('Ios Phone is calling...');
  }
}

class Android {
  void call() {
    print('Android Phone is calling...');
  }
}

//mixin 不能构造函数
mixin Huawei on Phone{

  @override
  void call() {
    super.call();
    print('Huawei phone is calling...');
  }

}

// 因为huawei类使用on附有继承关系 with 混入时候，必须先 Phone 才行
class MyPhone with Phone, Ios, Android, Huawei {}

void main(List<String> args) {
  var myPhone = MyPhone();
  // 多继承存在多个call方法， 最后面的继承类生效
  myPhone.call(); // 因为Huawei为混入关系所有call会将最后面的class 与 mixin的call一起触发
}
