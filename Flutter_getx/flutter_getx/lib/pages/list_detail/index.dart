import 'package:flutter/material.dart';
import 'package:get/get.dart';

class DetailView extends StatelessWidget {
  const DetailView({Key? key}) : super(key: key);

  _buildBackListTileRow(Map? val) {
    return val == null
        ? Container()
        : ListTile(
            title: Text("传值 id = " + val["id"].toString()),
            subtitle: Text('Get.back(result: {"success": true})'),
            onTap: () => Get.back(result: {"success": true}),
          );
  }

  @override
  Widget build(BuildContext context) {
    final details = Get.arguments as Map;

    return Scaffold(
      appBar: AppBar(title: Text('详情页')),
      body: ListView(
        children: [
          ListTile(
            title: Text('导航-返回'),
            subtitle: Text('Get.back()'),
            onTap: () => {Get.back()},
          ),
          _buildBackListTileRow(details)
        ],
      ),
    );
  }
}
