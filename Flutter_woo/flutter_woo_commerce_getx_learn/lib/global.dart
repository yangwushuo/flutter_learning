import 'package:flutter/material.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:get/get.dart';
import 'package:logger/logger.dart';

import 'common/index.dart';

class Global {
  static Future<void> init() async {
    // flutter原生端接口进行初始化
    WidgetsBinding widgetsBinding = WidgetsFlutterBinding.ensureInitialized();
    FlutterNativeSplash.preserve(widgetsBinding: widgetsBinding);

    // 工具类
    Loading();
    Storage().init();

    // 装载
    await Future.wait(
      [
        Get.putAsync<ConfigService>(() async => await ConfigService().init()),
      ],
    ).whenComplete(() {
      Get.put<WPHttpService>(WPHttpService());
      Get.put<UserService>(UserService());
      Get.put<Logger>(Logger());
    });
  }
}
