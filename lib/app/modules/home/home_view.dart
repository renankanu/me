import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:me/app/sections/about/about_section.dart';
import 'package:me/app/sections/intro/intro_section.dart';
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
        child: Container(
          child: Stack(
            children: [
              Padding(
                padding: EdgeInsets.only(top: isWeb(context) ? height : 0),
                child: Container(
                  width: double.infinity,
                  child: SingleChildScrollView(
                    child: Column(
                      children: [
                        IntroSection(),
                        AboutSection(),
                        SkillsSection(),
                      ],
                    ),
                  ),
                ),
              ),
              Visibility(
                visible: isWeb(context),
                child: CustomAppBar(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
