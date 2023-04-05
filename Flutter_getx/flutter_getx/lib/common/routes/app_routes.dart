part of 'app_pages.dart';

abstract class AppRoutes {
  static const Home = '/home';
  static const List = '/list';
  static const Detail = '/detail';
  static const Detail_ID = '/detail/:id';
  static const NotFound = '/notfound';
  static const Login = '/login';
  static const My = '/my';

  static const State = '/obx';
  static const Obx = '/obx';
  static const Getx = '/getx';
  static const GetBuilder = '/get_builder';
  static const ValueBuilder = '/value_builder';
  static const Workers = '/workers';

  static const Dependency = '/dependency';
  static const DependencyPutFind = '/dependency_put_find';
  static const DependencyLazyPut = '/dependency_lazy_put';
}
