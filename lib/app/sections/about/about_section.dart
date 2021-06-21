import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:me/app/widgets/base_section_container.dart';
import 'package:me/app/widgets/title_section.dart';
import 'package:me/generated/locales.g.dart';

import 'widgets/avatar_images.dart';

class AboutSection extends StatelessWidget {
  const AboutSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BaseSectionContainer(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          TitleSection(titleSection: LocaleKeys.menu_about.tr),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              AvatarImage(),
              SizedBox(width: 30),
              Expanded(
                child: Container(
                  child: Column(
                    children: [
                      Text(
                        LocaleKeys.menu_aboutMeDescOne.tr,
                        style: Get.textTheme.headline4?.copyWith(
                          fontSize: 24,
                          letterSpacing: -1.5,
                        ),
                      ),
                      Text(
                        LocaleKeys.menu_aboutMeDescTwo.tr,
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
        ],
      ),
    );
  }
}
