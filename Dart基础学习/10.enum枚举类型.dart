  // 定义 适合用在常量定义 类型比较很方便
  // 定义颜色枚举值
  enum ColorType{
    none,
    red,
    blue,
    green
  }

void main(List<String> args){
    // 1 接收输入值 red 字符串
  var input = "red";

  // 2 将输入值转换为 ColorType 枚举类型
  var color = ColorType.none;
  if (input == "red") {
    color = ColorType.red;
  } else if (input == "green") {
    color = ColorType.green;
  } else if (input == "blue") {
    color = ColorType.blue;
  }

  // 3 switch 判断，打印输出
  switch (color) {
    case ColorType.red:
      print(ColorType.red);
      break;
    case ColorType.green:
      print(ColorType.green);
      break;
    case ColorType.blue:
      print(ColorType.blue);
      break;
    default:
      print(ColorType.none);
  }
}  