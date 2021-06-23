import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:me/app/sections/skills/widgets/item_skill.dart';
import 'package:me/app/widgets/base_section_container.dart';
import 'package:me/app/widgets/title_section.dart';
import 'package:me/generated/locales.g.dart';

class SkillsSection extends StatelessWidget {
  const SkillsSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BaseSectionContainer(
      background: Get.theme.hintColor,
      child: Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            TitleSection(titleSection: LocaleKeys.menu_skills.tr),
            SizedBox(height: 32),
            Center(
                child: Wrap(
              spacing: 60,
              runSpacing: 60,
              children: [
                ItemSkill(label: 'Title', icon: 'Icon'),
                ItemSkill(label: 'Title', icon: 'Icon')
              ],
            )),
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
