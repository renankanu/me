import 'package:flutter/material.dart';

import 'widgets/avatar_images.dart';

class AboutSection extends StatelessWidget {
  const AboutSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        AvatarImage(),
        Container(
          child: Text('About Section'),
        ),
      ],
    );
  }
}
