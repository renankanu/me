import 'dart:async';

import 'package:get/get.dart';

class HomeController extends GetxController {
  final isInitialLoading = true.obs;
  @override
  void onInit() {
    super.onInit();
    initFakeLoading();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {}

  void initFakeLoading() {
    Timer.periodic(
      Duration(seconds: 4),
      (timer) {
        isInitialLoading.value = false;
      },
    );
  }
}
