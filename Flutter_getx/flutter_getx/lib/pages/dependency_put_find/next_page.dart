import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'controller.dart';

class NextPageView extends StatelessWidget {
  NextPageView({Key? key}) : super(key: key);

  // find 从全局获取一个依赖 CountController类型
  final controller = Get.find<CountController>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("NextPage"),
      ),
      body: Center(
        child: Column(
          children: [
            GetX<CountController>(
              init: controller,
              initState: (_) {},
              builder: (_) {
                return Text('value -> ${_.count}');
              },
            ),
            Divider(),
          ],
        ),
      ),
    );
  }
}
