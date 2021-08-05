import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:me/app/core/core.dart';
import 'package:me/app/core/image.dart';

class AvatarImage extends StatelessWidget {
  const AvatarImage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double getSize() {
      if (CustomizedResponsive.isSmallScreen()) {
        return 160;
      }
      return 320;
    }

    return Container(
      height: getSize(),
      width: getSize(),
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
                Radius.circular(getSize() / 2),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
