import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:me/app/core/widgets/logo_skill.dart';

import '../controllers/detail_skill_controller.dart';

class DetailSkillView extends GetView<DetailSkillController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Obx(
          () => Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                '${controller.currentSkill.name}',
                style: Get.textTheme.headline3,
              ),
              LogoSkill(icon: controller.currentSkill.icon!),
              Container(
                child: Text(controller.descriptionSkill),
              )
            ],
          ),
        ),
      ),
    );
  }
}
