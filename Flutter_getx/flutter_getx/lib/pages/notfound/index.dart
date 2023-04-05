import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../../common/routes/app_pages.dart';

class NotFoundView extends StatelessWidget {
  const NotFoundView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text("路由没有找到")),
        body: ListTile(
          title: Text("返回首页"),
          subtitle: Text("Get.offAllNamed(AppRoutes.Home)"),
          onTap: () => Get.offAllNamed(AppRoutes.Home),
        ));
  }
}
