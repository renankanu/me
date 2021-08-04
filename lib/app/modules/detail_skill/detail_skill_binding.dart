import 'package:get/get.dart';

import 'detail_skill_controller.dart';

class DetailSkillBinding extends Bindings {
  @override
  void dependencies() {
    Get.put<DetailSkillController>(
      DetailSkillController(),
    );
  }
}
