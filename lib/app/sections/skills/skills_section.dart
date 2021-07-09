import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:me/app/core/image.dart';
import 'package:me/app/modules/home/home_controller.dart';
import 'package:me/app/sections/skills/widgets/item_skill.dart';
import 'package:me/app/widgets/base_section_container.dart';
import 'package:me/app/widgets/title_section.dart';
import 'package:me/generated/locales.g.dart';
import 'package:visibility_detector/visibility_detector.dart';

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
                color: Get.theme.accentColor,
                width: 120,
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
                    ItemSkill(
                        label: 'Firebase', icon: CustomizedImages.icFirebase),
                    ItemSkill(
                        label: 'Apple Store',
                        icon: CustomizedImages.icAppStoreIos),
                    ItemSkill(
                        label: 'Google Play',
                        icon: CustomizedImages.icGooglePlay),
                    ItemSkill(label: 'Git', icon: CustomizedImages.icGit),
                    ItemSkill(label: 'Php', icon: CustomizedImages.icPhp),
                    ItemSkill(label: 'Docker', icon: CustomizedImages.icDocker),
                    ItemSkill(label: 'AWS', icon: CustomizedImages.icAws),
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
