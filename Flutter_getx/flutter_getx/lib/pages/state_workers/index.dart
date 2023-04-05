import 'package:flutter/material.dart';
import 'package:get/get.dart';
import './controller.dart';

// 手动控制 controller - update
class StateWorkersView extends StatelessWidget {
  StateWorkersView({Key? key}) : super(key: key);

  final controller = CountController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("State Workers"),
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
              ElevatedButton(
                  onPressed: () {
                    controller.add();
                  },
                  child: Text('add'))
            ],
          ),
        ));
  }
}
