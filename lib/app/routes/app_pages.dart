import 'package:get/get.dart';

import 'package:me/app/modules/detail_skill/bindings/detail_skill_binding.dart';
import 'package:me/app/modules/detail_skill/views/detail_skill_view.dart';
import 'package:me/app/modules/home/home_binding.dart';
import 'package:me/app/modules/home/home_view.dart';
import 'package:me/app/modules/not_found/not_found_view.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const INITIAL = Routes.HOME;
  static const NOT_FOUND = Routes.NOT_FOUND;
  static const DETAIL_SKILL = Routes.DETAIL_SKILL;

  static final routes = [
    GetPage(
      name: _Paths.HOME,
      page: () => HomeView(),
      binding: HomeBinding(),
    ),
    GetPage(
      name: _Paths.HOME,
      page: () => NotFoundView(),
    ),
    GetPage(
      name: _Paths.DETAIL_SKILL,
      page: () => DetailSkillView(),
      binding: DetailSkillBinding(),
    ),
  ];
}
