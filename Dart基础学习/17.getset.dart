class People {
  String? _name;

  // void set name(String name) {
  //   this._name = name;
  // }

  // String get name {
  //   return '${_name}';
  // }

  //简化 get set
  void set name(String name) => this._name = name;
  String get name => '${_name}';

}

void main(List<String> args) {
  var p = People();
  p.name = 'ducafecat';
  print(p.name);
}
