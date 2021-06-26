import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:me/app/core/core.dart';
import 'package:me/app/widgets/base_section_container.dart';
import 'package:me/app/widgets/title_section.dart';
import 'package:me/generated/locales.g.dart';

import 'widgets/avatar_images.dart';

class AboutSection extends StatelessWidget {
  const AboutSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BaseSectionContainer(
      child: Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            TitleSection(titleSection: LocaleKeys.menu_about.tr),
            SizedBox(height: 180),
            Visibility(
              visible: !CustomizedResponsive.isSmallScreen(context),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  AvatarImage(),
                  SizedBox(width: 30),
                  Expanded(
                    child: Container(
                      child: Column(
                        children: [
                          Text(
                            LocaleKeys.aboutSection_aboutMeDescOne.tr,
                            style: Get.textTheme.headline5?.copyWith(
                              fontSize: 48,
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
                                child: Text(LocaleKeys
                                    .aboutSection_tagMobileDeveloper.tr),
                              ),
                            ),
                          ),
                          Text(
                            LocaleKeys.aboutSection_aboutMeDescTwo.tr,
                            style: Get.textTheme.headline2?.copyWith(
                              fontSize: 20,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              replacement: Container(),
            )
          ],
        ),
      ),
    );
  }
}
