import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:me/app/core/colors.dart';
import 'package:me/app/core/image.dart';
import 'package:me/app/sections/intro/widgets/terminal.dart';
import 'package:me/app/widgets/base_section_container.dart';

class IntroSection extends StatelessWidget {
  const IntroSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BaseSectionContainer(
      body: Column(
        children: [
          RichText(
            text: TextSpan(
              text: 'Renan',
              style: Get.textTheme.headline1?.copyWith(
                color: CustomizedColors.white,
                fontSize: 36,
              ),
              children: const <TextSpan>[
                TextSpan(
                  text: 'Kanu;',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: CustomizedColors.burntSienna,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 60),
          Terminal(),
          Container(
            height: 240,
            width: 240,
            child: Stack(
              children: [
                Padding(
                  padding: const EdgeInsets.all(1),
                  child: Image.asset(
                    CustomizedImages.me,
                  ),
                ),
                Container(
                  decoration: BoxDecoration(
                    border: Border.all(
                      width: 4,
                      color: Get.theme.accentColor,
                    ),
                    borderRadius: BorderRadius.all(
                      Radius.circular(240 / 2),
                    ),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
