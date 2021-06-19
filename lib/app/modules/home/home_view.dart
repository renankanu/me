import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:me/app/sections/about_section.dart';
import 'package:me/app/sections/intro_section.dart';
import 'package:me/app/widgets/custom_app_bar.dart';

import 'home_controller.dart';

class HomeView extends GetView<HomeController> {
  @override
  Widget build(BuildContext context) {
    final PageController controller = PageController(initialPage: 0);
    return Scaffold(
      body: Container(
        child: Column(
          children: [
            CustomAppBar(),
            Expanded(
              child: PageView(
                scrollDirection: Axis.vertical,
                controller: controller,
                children: [
                  IntroSection(),
                  AboutSection(),
                  Text('Text 2'),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
