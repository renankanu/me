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
          children: [
            TitleSection(titleSection: LocaleKeys.menu_skills.tr),
            SizedBox(height: 32),
            Text(LocaleKeys.skillsSection_thingsIDo.tr),
            Container(
              height: 1,
              color: Get.theme.accentColor,
              width: 100,
            ),
            SizedBox(height: 16),
            Center(
                child: Wrap(
              spacing: 60,
              runSpacing: 58,
              children: [
                ItemSkill(label: 'Flutter', icon: ''),
                ItemSkill(
                    label: 'React Native',
                    icon: CustomizedImages.icReactNative),
                ItemSkill(label: 'JavaScript', icon: CustomizedImages.icJs),
                ItemSkill(label: 'TypeScript', icon: CustomizedImages.icTs),
                ItemSkill(label: 'Firebase', icon: CustomizedImages.icFirebase),
                ItemSkill(
                    label: 'Apple Store', icon: CustomizedImages.icAppStoreIos),
                ItemSkill(
                    label: 'Google Play', icon: CustomizedImages.icGooglePlay),
                ItemSkill(label: 'Git', icon: CustomizedImages.icGit),
                ItemSkill(label: 'Php', icon: CustomizedImages.icPhp),
                ItemSkill(label: 'Docker', icon: CustomizedImages.icDocker),
                ItemSkill(label: 'AWS', icon: CustomizedImages.icAws),
              ],
            )),
          ],
        ),
      ),
    );
  }
}
