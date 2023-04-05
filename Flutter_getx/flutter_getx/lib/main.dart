import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'common/routes/app_pages.dart';

Future<void> main() async {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) { 
    // TODO: implement build
    return GetMaterialApp(
      debugShowCheckedModeBanner: false, // 清楚debug标识
      initialRoute: AppPages.INITIAL, // 初始化路由
      getPages: AppPages.routes, // 路由列表
      unknownRoute: AppPages.unknownRoute, // 路由没有找到提示页
    );
  }
}
