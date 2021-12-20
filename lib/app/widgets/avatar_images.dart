import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:me/app/core/core.dart';

class AvatarImage extends StatelessWidget {
  const AvatarImage({
    Key? key,
    this.size,
    this.borderWidth,
  }) : super(key: key);

  final double? size;
  final double? borderWidth;

  @override
  Widget build(BuildContext context) {
    double getSize() {
      if (CustomizedResponsive.isSmallScreen()) {
        return 160;
      }
      return 320;
    }

    return Container(
      height: size ?? getSize(),
      width: size ?? getSize(),
      child: Stack(
        children: [
          Container(
            height: (size ?? getSize()) - 18,
            width: (size ?? getSize()) - 18,
            child: Padding(
              padding: const EdgeInsets.all(1),
              child: Image.asset(
                CustomizedImages.me,
                semanticLabel: 'Avatar me',
              ),
            ),
          ),
          Container(
            height: (size ?? getSize()) - 18,
            width: (size ?? getSize()) - 18,
            decoration: BoxDecoration(
              border: Border.all(
                width: borderWidth ?? 4,
                color: Get.theme.colorScheme.secondary,
              ),
              borderRadius: BorderRadius.all(
                Radius.circular(getSize() / 2),
              ),
            ),
          ),
          Positioned(
            top: CustomizedResponsive.isSmallScreen() ? 0 : -12,
            right: CustomizedResponsive.isSmallScreen() ? 10 : -8,
            child: RotationTransition(
              turns: const AlwaysStoppedAnimation(38 / 360),
              child: Container(
                height: CustomizedResponsive.isSmallScreen() ? 40 : 94,
                width: CustomizedResponsive.isSmallScreen() ? 40 : 94,
                child: Image.asset(CustomizedImages.hat),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
