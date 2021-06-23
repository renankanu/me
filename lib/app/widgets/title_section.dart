import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:me/app/animations/animations.dart';

class TitleSection extends StatelessWidget {
  final String titleSection;
  const TitleSection({
    Key? key,
    required this.titleSection,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ScaleAnimationTitleSection(
      child: Container(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              color: Get.theme.accentColor,
              child: Padding(
                padding: const EdgeInsets.only(
                  left: 20,
                  top: 8,
                  bottom: 8,
                ),
                child: Text(
                  titleSection.substring(0, 2),
                  style: Get.textTheme.headline5?.copyWith(fontSize: 36),
                ),
              ),
            ),
            Text(
              titleSection.substring(2),
              style: Get.textTheme.headline5?.copyWith(fontSize: 36),
            )
          ],
        ),
      ),
    );
  }
}
