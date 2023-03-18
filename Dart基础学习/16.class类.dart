class Point {
  int x;
  int y;
  Map o1, o2;

  Point(this.x, this.y)
      : o1 = {x: x},
        o2 = {y: y};

  Point.fromJson(Map json)
      : x = json['x'],
        y = json['y'],
        o1 = {'x': json['x'], 'y': json['y'] },
        o2 = {'x': json['x'] + 10, 'y': json['y'] + 10 };

  // 重定向构造函数
  // Point.fromJson(Map json) : this(json['x'], json['y']);

  call(String num) {
    print('phone number is $num');
  }

  @override
  String toString() {
    // TODO: implement toString
    return '$x, $y, $o1, $o2';
  }
}

void main(List<String> args) {
  var p = Point(2, 3);
  print(p.toString());

  var p1 = Point.fromJson({'x': 1, 'y': 2});
  print(p1);

  var p2 = Point(2, 3);
  p2('911'); // phone number is 911

}
