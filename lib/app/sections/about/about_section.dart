import 'package:flutter/material.dart';
import 'package:me/app/animations/animations.dart';
import 'package:me/app/widgets/base_section_container.dart';

import 'widgets/avatar_images.dart';

class AboutSection extends StatelessWidget {
  const AboutSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BaseSectionContainer(
      child: Column(
        children: [
          Row(
            children: [
              ScaleAnimation(child: AvatarImage()),
              Container(
                child: Text('About Section'),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
