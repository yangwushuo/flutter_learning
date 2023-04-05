import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'controller.dart';

// NextPageView继承GetView(获取泛型类型从全局中获取依赖 好处:不必收到声明获取) GetView继承StatelessWidget
class NextPageView extends GetView<CountController> {
  NextPageView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("GetView Page"),
      ),
      body: Center(
        child: Column(
          children: [
            // controller 父类中获取
            Obx(() => Text('value -> ${controller.count}')),
            Divider(),

            // 按钮
            ElevatedButton(
              onPressed: () {
                controller.add();
              },
              child: Text('add'),
            ),
          ],
        ),
      ),
    );
  }
}
