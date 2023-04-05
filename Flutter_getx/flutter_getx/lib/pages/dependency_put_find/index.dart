import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'controller.dart';
import 'next_page.dart';

class StateDependencyPutFindView extends StatelessWidget {
  StateDependencyPutFindView({Key? key}) : super(key: key);

  final controller = Get.put<CountController>(CountController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('State Dependency Put'),
        ),
        body: Center(
          child: Column(children: [
            GetX<CountController>(
              init: controller,
              initState: (_) {},
              builder: (_) {
                return Text('value -> ${_.count}');
              },
            ),
            Divider(),
            ElevatedButton(
                onPressed: () {
                  controller.add();
                },
                child: Text('Add')),
            ElevatedButton(
                onPressed: () {
                  // 跳转
                  Get.to(NextPageView());
                },
                child: Text('跳转下一页')),
          ]),
        ));
  }
}
