import 'package:flutter/src/widgets/navigator.dart';
import 'package:flutter_getx/common/routes/app_pages.dart';
import 'package:get/get.dart';

class RouteAuthMiddleware extends GetMiddleware {
  // @override
  // int priority = 0;

  // RouteAuthMiddleware({required this.priority});

  @override
  RouteSettings? redirect(String? route) {
    // 没有登录去登录页
    Future.delayed(Duration(seconds: 1), () => Get.snackbar("提示", "请先登录App"));
    return RouteSettings(name: AppRoutes.Login);
  }
}
