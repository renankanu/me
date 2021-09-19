import 'dart:async';

import 'package:get/get.dart';

class HomeController extends GetxController {
  final isInitialLoading = true.obs;
  final indexSectionSelected = (-1).obs;

  @override
  void onInit() {
    super.onInit();
    initFakeLoading();
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

  void setIndexSectionSelected(int indexSection) {
    indexSectionSelected.value = indexSection;
  }
}
