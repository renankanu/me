import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CustomizedResponsive {
  CustomizedResponsive._();

  static bool isSmallScreen() {
    return MediaQuery.of(Get.context!).size.width < 800;
  }

  static bool isLargeScreen() {
    return MediaQuery.of(Get.context!).size.width > 800;
  }

  static bool isMediumScreen() {
    return MediaQuery.of(Get.context!).size.width >= 800 &&
        MediaQuery.of(Get.context!).size.width <= 1200;
  }

  static double getHeight(double percent) {
    return MediaQuery.of(Get.context!).size.height * percent;
  }

  static double getWidth(double percent) {
    return MediaQuery.of(Get.context!).size.width * percent;
  }
}
