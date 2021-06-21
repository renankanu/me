import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:me/app/core/image.dart';

class AvatarImage extends StatelessWidget {
  const AvatarImage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 320,
      width: 320,
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
                Radius.circular(320 / 2),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
