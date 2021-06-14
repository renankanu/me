import 'package:flutter/material.dart';
import 'package:url_strategy/url_strategy.dart';

import 'package:get/get.dart';

import 'app/routes/app_pages.dart';
import 'app/theme/themes.dart';

void main() {
  setPathUrlStrategy();
  runApp(
    GetMaterialApp(
      title: "<RenanKanu>",
      initialRoute: AppPages.INITIAL,
      getPages: AppPages.routes,
      theme: Themes().lightTheme,
      themeMode: ThemeMode.system,
      darkTheme: Themes().darkTheme,
    ),
  );
}
