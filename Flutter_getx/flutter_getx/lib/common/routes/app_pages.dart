import 'package:flutter_getx/common/middleware/router_auth.dart';
import 'package:flutter_getx/pages/dependency_put_find/index.dart';
import 'package:flutter_getx/pages/login/index.dart';
import 'package:flutter_getx/pages/state_getBuilder/index.dart';
import 'package:flutter_getx/pages/state_getx/index.dart';
import 'package:flutter_getx/pages/state_valueBuilder/index.dart';
import 'package:flutter_getx/pages/state_workers/index.dart';
import 'package:get/get.dart';

import '../../pages/dependency_lazyPut/bindings.dart';
import '../../pages/dependency_lazyPut/index.dart';
import '../../pages/home/index.dart';
import '../../pages/list/index.dart';
import '../../pages/list_detail/index.dart';
import '../../pages/my/index.dart';
import '../../pages/notfound/index.dart';
import '../../pages/state_obx/index.dart';
import '../../pages/state_getx/index.dart';

part 'app_routes.dart';

class AppPages {
  static const INITIAL = AppRoutes.Home;

  static final unknownRoute =
      GetPage(name: AppRoutes.NotFound, page: () => NotFoundView());
  static final routes = [
    // 白名单
    GetPage(
        name: AppRoutes.Login,
        page: () => LoginView(),
        transition: Transition.fade),
    // 需要登录 中间件
    GetPage(
        name: AppRoutes.My,
        page: () => MyView(),
        middlewares: [RouteAuthMiddleware()]),
    // 首页
    // Home > List > Detail
    GetPage(name: AppRoutes.Home, page: () => HomeView(), children: [
      GetPage(name: AppRoutes.List, page: () => ListView(), children: [
        GetPage(name: AppRoutes.Detail, page: () => DetailView()),
        GetPage(name: AppRoutes.Detail_ID, page: () => DetailView())
      ])
    ]),
    // 状态
    // ValueBuilder
    GetPage(name: AppRoutes.State, page: () => StateObxView(), children: [
      GetPage(name: AppRoutes.Obx, page: () => StateObxView()),
      GetPage(name: AppRoutes.Getx, page: () => StateGetxView()),
      GetPage(name: AppRoutes.GetBuilder, page: () => StateGetBuilderView()),
      GetPage(name: AppRoutes.ValueBuilder, page: () => StateValueBuilder()),
      GetPage(name: AppRoutes.Workers, page: () => StateWorkersView()),
    ]),
    // 控制器依赖注入
    GetPage(
        name: AppRoutes.Dependency,
        page: () => StateDependencyPutFindView(),
        children: [
          GetPage(
              name: AppRoutes.DependencyPutFind,
              page: () => StateDependencyPutFindView()),
          GetPage(
              name: AppRoutes.DependencyLazyPut,
              // 调用此路由的时候自动将依赖注册到全局中
              binding: DependencyLazyPutBinding(),
              page: () => StateDependencyLazyPutView()),
        ]),
  ];
}
