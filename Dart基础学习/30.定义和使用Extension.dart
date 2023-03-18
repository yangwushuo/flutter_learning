class Phone {
  String? name;
  Phone(this.name);

  String info() {
    return '${name}';
  }
}

// extension的使用相当于原有类上进行扩展 类似于扩展插件,源定义对象直接使用
extension extensionPhone on Phone {
  void call(int? number) {
    print('${name}正在呼叫:${number}');
  }
}

void main(List<String> args) {
  var phone = Phone('华为');
  phone.call(1234123412);
}
