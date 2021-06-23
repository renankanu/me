import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:me/app/core/image.dart';
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
            Text(
              LocaleKeys.skillsSection_thingsIDo.tr,
              style: Get.textTheme.subtitle1?.copyWith(fontSize: 20),
            ),
            SizedBox(height: 32),
            Center(
                child: Wrap(
              spacing: 60,
              runSpacing: 58,
              children: [
                ItemSkill(
                    label: 'Apple Store', icon: CustomizedImages.icAppStoreIos),
                ItemSkill(label: 'Git', icon: CustomizedImages.icGit),
                ItemSkill(
                    label: 'Google Play', icon: CustomizedImages.icGooglePlay),
                ItemSkill(label: 'Php', icon: CustomizedImages.icPhp),
                ItemSkill(label: 'Title', icon: ''),
                ItemSkill(label: 'Title', icon: ''),
              ],
            )),
          ],
        ),
      ),
    );
  }
}
