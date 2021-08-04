import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:me/app/core/widgets/logo_skill.dart';

import 'detail_skill_controller.dart';

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
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    '${controller.currentSkill.name}',
                    style: Get.textTheme.headline3,
                  ),
                  SizedBox(width: 16),
                  LogoSkill(
                    icon: controller.currentSkill.icon!,
                    height: 50,
                  ),
                ],
              ),
              SizedBox(height: 32),
              Container(
                constraints: BoxConstraints(
                  maxWidth: 800,
                  minWidth: 500,
                ),
                padding: EdgeInsets.symmetric(vertical: 16, horizontal: 32),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(6),
                  border: Border.all(
                    color: Get.theme.dividerColor,
                    width: 1,
                  ),
                ),
                child: Text(controller.descriptionSkill),
              )
            ],
          ),
        ),
      ),
    );
  }
}
