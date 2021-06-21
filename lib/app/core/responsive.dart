import 'package:flutter/material.dart';

class ResponsiveWidget {
  ResponsiveWidget._();

  static bool isSmallScreen(BuildContext context) {
    return MediaQuery.of(context).size.width < 800;
  }

  static bool isLargeScreen(BuildContext context) {
    return MediaQuery.of(context).size.width > 800;
  }

  static bool isMediumScreen(BuildContext context) {
    return MediaQuery.of(context).size.width >= 800 &&
        MediaQuery.of(context).size.width <= 1200;
  }

  static double getHeight(BuildContext context, double percent) {
    return MediaQuery.of(context).size.height * percent;
  }

  static double getWidth(BuildContext context, double percent) {
    return MediaQuery.of(context).size.width * percent;
  }
}
