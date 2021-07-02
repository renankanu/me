import 'package:get/get.dart';

import 'package:me/app/modules/home/home_binding.dart';
import 'package:me/app/modules/home/home_view.dart';
import 'package:me/app/modules/not_found/not_found_view.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const INITIAL = Routes.HOME;
  static const NOT_FOUND = Routes.NOT_FOUND;

  static final routes = [
    GetPage(
      name: _Paths.HOME,
      page: () => HomeView(),
      binding: HomeBinding(),
    ),
    GetPage(name: _Paths.HOME, page: () => NotFoundView())
  ];
}
