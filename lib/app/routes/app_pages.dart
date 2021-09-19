import 'package:get/get.dart';
import 'package:me/app/modules/detail_skill/detail_skill_binding.dart';
import 'package:me/app/modules/detail_skill/detail_skill_view.dart';
import 'package:me/app/modules/home/home_binding.dart';
import 'package:me/app/modules/home/home_view.dart';
import 'package:me/app/modules/not_found/not_found_view.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const initial = Routes.home;
  static const notFound = Routes.notFound;
  static const detailSkill = Routes.detailSkill;

  static final routes = [
    GetPage(
      name: _Paths.home,
      page: () => HomeView(),
      binding: HomeBinding(),
    ),
    GetPage(
      name: _Paths.home,
      page: () => NotFoundView(),
    ),
    GetPage(
      name: _Paths.detailSkill,
      page: () => DetailSkillView(),
      binding: DetailSkillBinding(),
    ),
  ];
}
