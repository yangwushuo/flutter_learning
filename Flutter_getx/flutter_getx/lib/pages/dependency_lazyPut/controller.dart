import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CountController extends GetxController {
  final _count = 0.obs;
  set count(value) => this._count.value = value;
  get count => this._count.value;

  add() => _count.value++;

  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();
    print("onInit");
  }

  @override
  void onClose() {
    // TODO: implement onClose
    super.onClose();
    print("onClose");
  }
}
