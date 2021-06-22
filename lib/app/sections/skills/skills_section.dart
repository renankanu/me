import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:me/app/widgets/base_section_container.dart';
import 'package:me/app/widgets/title_section.dart';
import 'package:me/generated/locales.g.dart';

class SkillsSection extends StatelessWidget {
  const SkillsSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BaseSectionContainer(
      child: Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            TitleSection(titleSection: LocaleKeys.menu_skills.tr),
            SizedBox(height: 32),
            Text(
              LocaleKeys.skillsSection_thingsIDo.tr,
              style: Get.textTheme.subtitle1?.copyWith(fontSize: 20),
            ),
          ],
        ),
      ),
    );
  }
}
