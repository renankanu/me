import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:me/app/core/core.dart';
import 'package:me/app/modules/home/home_controller.dart';
import 'package:me/app/widgets/base_section_container.dart';
import 'package:me/app/widgets/title_section.dart';
import 'package:me/generated/locales.g.dart';
import 'package:visibility_detector/visibility_detector.dart';

import '../../widgets/avatar_images.dart';

class AboutSection extends StatelessWidget {
  AboutSection({Key? key}) : super(key: key);

  final HomeController controller = Get.put(HomeController());

  @override
  Widget build(BuildContext context) {
    return VisibilityDetector(
      key: UniqueKey(),
      onVisibilityChanged: (visibilityInfo) {
        var visiblePercentage = visibilityInfo.visibleFraction * 100;
        if (visiblePercentage >= 75) {
          controller.setIndexSectionSelected(0);
        }
      },
      child: BaseSectionContainer(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              TitleSection(titleSection: LocaleKeys.menu_about.tr),
              SizedBox(height: CustomizedResponsive.isSmallScreen() ? 90 : 180),
              Visibility(
                visible: !CustomizedResponsive.isSmallScreen(),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    AvatarImage(),
                    SizedBox(width: 30),
                    Expanded(
                      child: Description(),
                    ),
                  ],
                ),
                replacement: Column(
                  children: [
                    AvatarImage(),
                    SizedBox(height: 30),
                    Description(),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class Description extends StatelessWidget {
  const Description({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          LocaleKeys.aboutSection_aboutMeDescOne.tr,
          textAlign: TextAlign.center,
          style: Get.textTheme.headline5?.copyWith(
            fontSize: CustomizedResponsive.isSmallScreen() ? 36 : 48,
            letterSpacing: 1.5,
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 12),
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.all(
                Radius.circular(12),
              ),
              color: Get.theme.accentColor,
            ),
            child: Padding(
              padding: const EdgeInsets.symmetric(
                vertical: 12,
                horizontal: 24,
              ),
              child: Text(LocaleKeys.aboutSection_tagMobileDeveloper.tr),
            ),
          ),
        ),
        Text(
          LocaleKeys.aboutSection_aboutMeDescTwo.tr,
          textAlign: TextAlign.center,
          style: Get.textTheme.headline2?.copyWith(
            fontSize: 20,
          ),
        ),
      ],
    );
  }
}
