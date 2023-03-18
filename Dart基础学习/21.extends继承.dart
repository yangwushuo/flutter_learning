// 继承
class Phone {
  int? phoneId;

  Phone(this.phoneId);

  void startup() {
    print("手机正在开机");
  }

  void endup() {
    print("手机正在关机");
  }

  void info() {
    print("手机id:${phoneId}");
  }

}

class Iphone extends Phone {
  // 参数赋予父类
  Iphone(iphoneId) : super(iphoneId);

  @override
  void startup() {
    super.startup();
    print("苹果手机正在关机");
  }

  @override
  void endup() {
    super.endup();
    print("苹果手机正在关机");
  }

}

void main(List<String> args) {
  Phone phone = Iphone(1234);
  phone.startup();
  phone.endup();
  phone.info();
}
