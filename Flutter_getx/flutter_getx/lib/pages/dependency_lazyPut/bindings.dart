import 'package:get/get.dart';
import 'controller.dart';

//Bindings类配置到路由中
class DependencyLazyPutBinding implements Bindings {
  @override
  void dependencies() {
    // TODO: implement dependencies
    // 懒注册到全局依赖中
    Get.lazyPut<CountController>(() => CountController());
  }
}
