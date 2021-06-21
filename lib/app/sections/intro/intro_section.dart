import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:me/app/core/colors.dart';
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
              style: Get.textTheme.headline4?.copyWith(
                color: Get.theme.disabledColor,
              ),
              children: <TextSpan>[
                TextSpan(
                  text: 'Kanu;',
                  style: Get.textTheme.headline5?.copyWith(
                    color: CustomizedColors.burntSienna,
                    fontSize: 34,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 60),
          Terminal(),
        ],
      ),
    );
  }
}
