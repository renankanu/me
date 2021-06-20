import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:me/app/sections/about_section.dart';
import 'package:me/app/sections/intro_section.dart';
import 'package:me/app/widgets/base_section_container.dart';
import 'package:me/app/widgets/custom_app_bar.dart';

import 'home_controller.dart';

class HomeView extends GetView<HomeController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Column(
          children: [
            CustomAppBar(),
            Expanded(
              child: Container(
                width: double.infinity,
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      BaseSectionContainer(body: IntroSection()),
                      AboutSection(),
                      Text('Text 2'),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
