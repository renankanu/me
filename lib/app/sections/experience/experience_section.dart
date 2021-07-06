import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:me/app/modules/home/home_controller.dart';
import 'package:me/app/sections/experience/widgets/container_experience.dart';
import 'package:me/app/widgets/base_section_container.dart';
import 'package:me/app/widgets/title_section.dart';
import 'package:me/generated/locales.g.dart';
import 'package:visibility_detector/visibility_detector.dart';

class ExperienceSection extends StatelessWidget {
  ExperienceSection({Key? key}) : super(key: key);

  final HomeController controller = Get.put(HomeController());

  @override
  Widget build(BuildContext context) {
    return VisibilityDetector(
      key: UniqueKey(),
      onVisibilityChanged: (visibilityInfo) {
        var visiblePercentage = visibilityInfo.visibleFraction * 100;
        if (visiblePercentage >= 75) {
          controller.setIndexSectionSelected(3);
        }
      },
      child: BaseSectionContainer(
        background: Get.theme.hintColor,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              TitleSection(titleSection: LocaleKeys.menu_experiences.tr),
              SizedBox(height: 32),
              ContainerExperience(
                title: LocaleKeys.experienceSection_megaTitle.tr,
                date: LocaleKeys.experienceSection_megaDate.tr,
                description: LocaleKeys.experienceSection_megaDescription.tr,
              ),
              ContainerExperience(
                title: LocaleKeys.experienceSection_sisterraTitle.tr,
                date: LocaleKeys.experienceSection_sisterraDate.tr,
                description:
                    LocaleKeys.experienceSection_sisterraDescription.tr,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
