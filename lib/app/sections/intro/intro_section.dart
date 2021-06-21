import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:me/app/core/colors.dart';
import 'package:me/app/sections/intro/widgets/row_social_media.dart';
import 'package:me/app/sections/intro/widgets/terminal.dart';
import 'package:me/app/widgets/base_section_container.dart';

class IntroSection extends StatelessWidget {
  const IntroSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BaseSectionContainer(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          RichText(
            text: TextSpan(
              text: 'Renan',
              style: Get.textTheme.headline4?.copyWith(
                color: Get.theme.disabledColor,
                fontSize: 48,
              ),
              children: <TextSpan>[
                TextSpan(
                  text: 'Kanu;',
                  style: Get.textTheme.headline5?.copyWith(
                    color: CustomizedColors.burntSienna,
                    fontSize: 48,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 60),
          Terminal(),
          SizedBox(height: 60),
          RowSocialMedia()
        ],
      ),
    );
  }
}
