import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:thememode_selector/thememode_selector.dart';

class ThemeModeToggle extends StatelessWidget {
  ThemeModeToggle({Key? key, this.height}) : super(key: key);

  final double? height;

  @override
  Widget build(BuildContext context) {
    return ThemeModeSelector(
      isDarkTheme: Get.isDarkMode ? true : false,
      height: height ?? 39,
      onChanged: (mode) {
        Get.changeThemeMode(mode);
      },
    );
  }
}
