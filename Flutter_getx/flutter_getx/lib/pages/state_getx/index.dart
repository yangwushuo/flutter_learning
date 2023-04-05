import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'controller.dart';

class StateGetxView extends StatelessWidget {
  StateGetxView({Key? key}) : super(key: key);

  final controller = CountController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Getx"),
        ),
        body: Center(
            child: Column(
              children: [
            GetX<CountController>(
              init: controller,
              initState: (_) {},
              builder: (_) {
                print("Getx - 1");
                return Text('value 1 -> ${_.count}');
              },
            ),
            GetX<CountController>(
              init: controller,
              initState: (_) {},
              builder: (_) {
                print("Getx - 1");
                return Text('value 1 -> ${_.count}');
              },
            ),
            Divider(),
            GetX<CountController>(
              init: controller,
              initState: (_) {},
              builder: (_) {
                print("Getx -3");
                return Column(
                  children: [
                    Text('value 3 -> ${_.count}'),
                    ElevatedButton(
                        onPressed: () {
                          _.add();
                        },
                        child: Text('count1'))
                  ],
                );
              },
            ),
            Divider(),
            GetX<CountController>(
              init: controller,
              initState: (_) {},
              builder: (_) {
                print("Getx - 4");
                return Text('value 4 -> ${_.count2}');
              },
            ),
            Divider(),
            ElevatedButton(
                onPressed: () {
                  controller.add();
                },
                child: Text('count1')),
            ElevatedButton(
                onPressed: () {
                  controller.add2();
                },
                child: Text('count2')),
          ],
        )));
  }
}
