import 'package:get/get.dart';

class CountController extends GetxController{

  final _count = 0.obs;
  set count(value) => _count.value = value;
  get count => _count.value;

  final _count2 = 0.obs;
  set count2(value) => _count2.value = value;
  get count2 => _count2.value;

  add() => _count.value += 1;
  add2() => _count2.value += 1;

}