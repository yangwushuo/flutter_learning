typedef Func1 = void Function(String str);

class Test {
  Func1? f;
  Test(this.f);
}

void main(List<String> args) {
  var t = Test((String val) => print(val));
  t.f!("aaaaa");
}
