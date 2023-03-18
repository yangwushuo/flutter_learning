void main(List<String> args) {
  // if for while dowhile for switch break continue
  // continue 指定位置
  String command = "close";
  switch (command) {
    case "open":
      print("open");
      break;
    case "close":
      print("close");
      continue doClear;
    case "close2":
      print("close2");
      continue doClear;

    doClear:
    case "doClose":
      print("doClose");
      break;

    default:
      print("other");
  }
}
