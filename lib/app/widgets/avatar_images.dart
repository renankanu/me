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
          Padding(
            padding: const EdgeInsets.all(1),
            child: Image.asset(
              CustomizedImages.me,
              semanticLabel: 'Avatar me',
            ),
          ),
          Container(
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
        ],
      ),
    );
  }
}
