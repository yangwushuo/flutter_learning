import 'package:flutter/material.dart';
import 'package:get/get.dart';

class StateValueBuilder extends StatelessWidget {
  StateValueBuilder({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('valueBuilder'),
        ),
        body: Column(
          children: [
            Center(
                child: ValueBuilder<int?>(
              initialValue: 10,
              builder: (value, updateFn) {
                return Column(
                  children: [
                    Text("count -> " + value.toString()),
                    ElevatedButton(
                        onPressed: () {
                          // 点击更新数值
                          updateFn(value! + 1);
                        },
                        child: Text("ValueBuilder -> add")),
                  ],
                );
              },
              onUpdate: (value) => print("Value updated: $value 组件更新"),
              onDispose: () => print("Widget unmounted 组件卸载"),
            ))
          ],
        ));
  }
}
