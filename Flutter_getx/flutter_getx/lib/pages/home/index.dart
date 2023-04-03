import 'package:flutter/material.dart';
import 'package:flutter_getx/pages/list_detail/index.dart';
import 'package:get/get.dart';

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
              Get.snackbar("返回值", "success -> " + result["success"].toString());
            },
          ),
          Divider()
        ],
      ),
    );
  }
}
