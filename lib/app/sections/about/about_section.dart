import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:me/app/core/image.dart';

class AboutSection extends StatelessWidget {
  const AboutSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
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
        ),
        Container(
          child: Text('About Section'),
        ),
      ],
    );
  }
}
