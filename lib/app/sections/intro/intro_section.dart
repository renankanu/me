import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:me/app/animations/animations.dart';
import 'package:me/app/core/colors.dart';
import 'package:me/app/core/image.dart';
import 'package:me/app/modules/home/home_controller.dart';
import 'package:me/app/sections/intro/widgets/row_social_media.dart';
import 'package:me/app/sections/intro/widgets/terminal.dart';
import 'package:me/app/widgets/base_section_container.dart';
import 'package:rive/rive.dart';
import 'package:visibility_detector/visibility_detector.dart';

class IntroSection extends StatelessWidget {
  IntroSection({Key? key}) : super(key: key);

  final HomeController controller = Get.put(HomeController());

  @override
  Widget build(BuildContext context) {
    return VisibilityDetector(
      key: UniqueKey(),
      onVisibilityChanged: (visibilityInfo) {
        var visiblePercentage = visibilityInfo.visibleFraction * 100;
        if (visiblePercentage >= 37) {
          controller.setIndexSectionSelected(-1);
        }
      },
      child: BaseSectionContainer(
        background: Get.theme.hintColor,
        hasImageBackground: true,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SlideAnimation(
              child: RichTextTitle(),
            ),
            SizedBox(height: 60),
            Terminal(),
            SizedBox(height: 60),
            SlideAnimation(
              child: RowSocialMedia(),
              millisecondsDuration: 1000,
            ),
            SizedBox(height: 60),
            SizedBox(
              height: 100,
              child: RiveAnimation.asset(CustomizedImages.icScroll),
            ),
          ],
        ),
      ),
    );
  }
}

class RichTextTitle extends StatelessWidget {
  const RichTextTitle({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return RichText(
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
    );
  }
}
