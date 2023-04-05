import 'package:flutter/material.dart';
import 'package:flutter_getx/pages/list_detail/index.dart';
import 'package:get/get.dart';

import '../../common/routes/app_pages.dart';

class HomeView extends StatelessWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(title: Text('首页')),
      body: ListView(
        children: [
          // 路由导航
          ListTile(
            title: Text("导航-命名路由 home > List"),
            subtitle: Text('Get.toNamed("/home/list")'),
            onTap: () => Get.toNamed("/home/list"),
          ),
          ListTile(
            title: Text("导航-命名路由 home > List > detail"),
            subtitle: Text('Get.toNamed("/home/list/detail")'),
            onTap: () => Get.toNamed("/home/list/detail"),
          ),
          ListTile(
            title: Text("导航-类对象"),
            subtitle: Text('Get.to(DetailView())目标对象'),
            onTap: () => Get.to(DetailView()),
          ),
          ListTile(
            title: Text("导航-清楚上一个"),
            subtitle: Text('Get.off(DetailView())路由完成清楚上一个'),
            onTap: () => Get.off(DetailView()),
          ),
          ListTile(
            title: Text("导航-清楚以前所有"),
            subtitle: Text('Get.off(DetailView())路由完成清楚之前所有'),
            onTap: () => Get.offAll(DetailView()),
          ),
          Divider(),
          ListTile(
            title: Text("导航-arguments传值+返回值"),
            subtitle:
                Text('Get.toNamed("/home/list/detail", arguments: {"id": 1})'),
            onTap: () async {
              var result =
                  await Get.toNamed("/home/list/detail", arguments: {"id": 1});
              Get.snackbar("返回值",
                  "success arguments传值 -> " + result["success"].toString());
            },
          ),
          ListTile(
              title: Text("导航-parameters传值+返回值"),
              subtitle: Text('Get.toNamed("/home/list/detail?id=666")'),
              onTap: () async {
                var result = await Get.toNamed("/home/list/detail?id=666");
                Get.snackbar("返回值",
                    "success parameters传值-> " + result["success"].toString());
              }),
          ListTile(
              title: Text("导航-参数传值+返回值"),
              subtitle: Text('Get.toNamed("/home/list/detail/999")'),
              onTap: () async {
                var result = await Get.toNamed("/home/list/detail/999");
                Get.snackbar(
                    "返回值", "success 参数传值-> " + result["success"].toString());
              }),
          ListTile(
              title: Text("导航-not found"),
              subtitle: Text('Get.toNamed("/aaa9")'),
              onTap: () async {
                await Get.toNamed("/aaa9");
              }),
          ListTile(
              title: Text("导航-中间件-认证Auth"),
              subtitle: Text('Get.toNamed(AppRoutes.My)'),
              onTap: () async {
                await Get.toNamed(AppRoutes.My);
              }),
          Divider(),
          // 状态管理
          ListTile(
              title: Text("State-Obx"),
              subtitle: Text('Get.toNamed(AppRoutes.Obx)'),
              onTap: () => Get.toNamed(AppRoutes.State + AppRoutes.Obx)),
          ListTile(
              title: Text("State-Getx"),
              subtitle: Text('Get.toNamed(AppRoutes.Getx)'),
              onTap: () => Get.toNamed(AppRoutes.State + AppRoutes.Getx)),
          ListTile(
            title: Text("State-GetBuilder"),
            subtitle: Text('Get.toNamed(AppRoutes.GetBuilder)'),
            onTap: () => Get.toNamed(AppRoutes.State + AppRoutes.GetBuilder),
          ),
          ListTile(
            title: Text("State-ValueBuilder"),
            subtitle: Text('Get.toNamed(AppRoutes.ValueBuilder)'),
            onTap: () => Get.toNamed(AppRoutes.State + AppRoutes.ValueBuilder),
          ),
          ListTile(
            title: Text("State-Workers"),
            subtitle: Text('Get.toNamed(AppRoutes.Workers)'),
            onTap: () => Get.toNamed(AppRoutes.State + AppRoutes.Workers),
          ),
          Divider(),
          ListTile(
            title: Text("Dependency-Put-Find"),
            subtitle: Text('Get.toNamed(AppRoutes.DependencyPutFind)'),
            onTap: () =>
                Get.toNamed(AppRoutes.Dependency + AppRoutes.DependencyPutFind),
          ),
          ListTile(
            title: Text("Dependency-LazyPut"),
            subtitle: Text('Get.toNamed(AppRoutes.DependencyLazyPut)'),
            onTap: () =>
                Get.toNamed(AppRoutes.Dependency + AppRoutes.DependencyLazyPut),
          ),
        ],
      ),
    );
  }
}
