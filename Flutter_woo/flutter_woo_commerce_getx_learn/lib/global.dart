import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'common/index.dart';

class Global {
  static Future<void> init() async {
    // flutter原生端接口进行初始化
    WidgetsFlutterBinding.ensureInitialized();
    // 装载
    await Future.wait(
      [
        // 工具类
        Storage().init(),
        Get.putAsync<ConfigService>(() async => await ConfigService().init()),
      ],
    ).whenComplete(() {
      Get.put<WPHttpService>(WPHttpService());
    });
  }
}
