import 'package:get/get.dart';

class CountController extends GetxController {
  final _count = 0.obs;
  set count(value) => this.count.value = value;
  get count => this.count.value;

  add() => this.count.value++;

  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();

    // 每次
    ever(_count, (value) {
      print("ever -> " + value.toString());
    });

    // 第一次
    once(_count, (value) {
      print("once -> " + value.toString());
    });

    // 防抖2秒内
    debounce(_count, (value) {
      print("debounce -> " + value.toString());
    }, time: Duration(seconds: 2));

    // 定时器1秒
    interval(_count, (value) {
      print("interval -> " + value.toString());
    }, time: Duration(seconds: 1));
  }
}
