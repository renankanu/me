import 'package:flutter/material.dart';
import 'package:me/app/sections/intro/widgets/terminal.dart';
import 'package:me/app/widgets/base_section_container.dart';

class IntroSection extends StatelessWidget {
  const IntroSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BaseSectionContainer(
      body: Column(
        children: [
          Text('RenanKanu'),
          SizedBox(height: 60),
          Terminal(),
        ],
      ),
    );
  }
}
