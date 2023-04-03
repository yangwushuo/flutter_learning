import 'package:get/get.dart';

import '../../pages/home/index.dart';
import '../../pages/list/index.dart';
import '../../pages/list_detail/index.dart';

part 'app_routes.dart';

class AppPages {
  static const INITIAL = AppRoutes.Home;

  static final routes = [
    // Home > List > Detail
    GetPage(
      name: AppRoutes.Home, 
      page: () => HomeView(), 
      children: [
      GetPage(
        name: AppRoutes.List,
        page: () => ListView(),
        children: [
          GetPage(
            name: AppRoutes.Detail, 
            page: () => DetailView()
          )
        ]
      )
    ])
  ];
}
