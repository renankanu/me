import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:loading_animations/loading_animations.dart';
import 'package:me/app/sections/about/about_section.dart';
import 'package:me/app/sections/intro/intro_section.dart';
import 'package:me/app/sections/repo/repo_section.dart';
import 'package:me/app/sections/skills/skills_section.dart';
import 'package:me/app/widgets/custom_app_bar.dart';

import 'home_controller.dart';

class HomeView extends GetView<HomeController> {
  bool isWeb(BuildContext context) {
    return MediaQuery.of(context).size.width > 728;
  }

  @override
  Widget build(BuildContext context) {
    var height = AppBar().preferredSize.height;
    return Scaffold(
      appBar: isWeb(context) ? null : AppBar(),
      drawer: isWeb(context) ? null : Container(),
      body: SafeArea(
        child: Obx(
          () => Visibility(
            visible: !controller.isInitialLoading.value,
            child: Stack(
              children: [
                Padding(
                  padding: EdgeInsets.only(top: isWeb(context) ? height : 0),
                  child: SingleChildScrollView(
                    child: Column(
                      children: [
                        IntroSection(),
                        AboutSection(),
                        SkillsSection(),
                        RepoSection(),
                      ],
                    ),
                  ),
                ),
                Visibility(
                  visible: isWeb(context),
                  child: CustomAppBar(),
                ),
              ],
            ),
            replacement: Center(
              child: Column(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'RK;',
                    style: Get.textTheme.headline4,
                  ),
                  SizedBox(height: 20),
                  LoadingBouncingGrid.square(
                    size: 40,
                    backgroundColor: Get.theme.cardColor,
                    duration: Duration(seconds: 1),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
