import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:me/app/core/image.dart';
import 'package:me/app/model/skill.dart';
import 'package:me/app/modules/home/home_controller.dart';
import 'package:me/app/sections/skills/widgets/item_skill.dart';
import 'package:me/app/widgets/base_section_container.dart';
import 'package:me/app/widgets/title_section.dart';
import 'package:me/generated/locales.g.dart';
import 'package:visibility_detector/visibility_detector.dart';

final listSkills = [
  Skill(name: 'Flutter', icon: '', skillType: SkillType.flutter),
  Skill(
    name: 'React Native',
    icon: CustomizedImages.icReactNative,
    skillType: SkillType.rn,
  ),
  Skill(
    name: 'JavaScript',
    icon: CustomizedImages.icJs,
    skillType: SkillType.js,
  ),
  Skill(
    name: 'TypeScript',
    icon: CustomizedImages.icTs,
    skillType: SkillType.ts,
  ),
  Skill(
    name: 'FireBase',
    icon: CustomizedImages.icFirebase,
    skillType: SkillType.firebase,
  ),
  Skill(
    name: 'Apple Store',
    icon: CustomizedImages.icAppStoreIos,
    skillType: SkillType.appleStore,
  ),
  Skill(
    name: 'Google Play',
    icon: CustomizedImages.icGooglePlay,
    skillType: SkillType.googlePlay,
  ),
  Skill(
    name: 'Git',
    icon: CustomizedImages.icGit,
    skillType: SkillType.git,
  ),
  Skill(
    name: 'Php',
    icon: CustomizedImages.icPhp,
    skillType: SkillType.php,
  ),
  Skill(
    name: 'Docker',
    icon: CustomizedImages.icDocker,
    skillType: SkillType.docker,
  ),
  Skill(
    name: 'Aws',
    icon: CustomizedImages.icAws,
    skillType: SkillType.aws,
  ),
];

class SkillsSection extends StatelessWidget {
  SkillsSection({Key? key}) : super(key: key);

  final HomeController controller = Get.put(HomeController());

  @override
  Widget build(BuildContext context) {
    return VisibilityDetector(
      key: UniqueKey(),
      onVisibilityChanged: (visibilityInfo) {
        var visiblePercentage = visibilityInfo.visibleFraction * 100;
        if (visiblePercentage >= 37) {
          controller.setIndexSectionSelected(1);
        }
      },
      child: BaseSectionContainer(
        background: Get.theme.hintColor,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            children: [
              TitleSection(titleSection: LocaleKeys.menu_skills.tr),
              SizedBox(height: 32),
              Text(LocaleKeys.skillsSection_thingsIDo.tr),
              Container(
                height: 2,
                color: Get.theme.colorScheme.secondary,
                width: 120,
              ),
              SizedBox(height: 16),
              Center(
                child: Wrap(
                  spacing: 60,
                  runSpacing: 58,
                  children: [
                    ...listSkills.map(
                      (skill) => ItemSkill(
                        skill: skill,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 60),
            ],
          ),
        ),
      ),
    );
  }
}
