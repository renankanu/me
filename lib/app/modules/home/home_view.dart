import 'package:animated_toggle_switch/animated_toggle_switch.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:me/app/core/core.dart';
import 'package:me/app/modules/home/widgets/initial_loading.dart';
import 'package:me/app/sections/about/about_section.dart';
import 'package:me/app/sections/experience/experience_section.dart';
import 'package:me/app/sections/intro/intro_section.dart';
import 'package:me/app/sections/repo/repo_section.dart';
import 'package:me/app/sections/skills/skills_section.dart';
import 'package:me/app/widgets/avatar_images.dart';
import 'package:me/app/widgets/custom_app_bar.dart';
import 'package:me/app/widgets/footer.dart';
import 'package:me/app/widgets/menu_item.dart';
import 'package:me/generated/locales.g.dart';

import 'home_controller.dart';

class HomeView extends GetView<HomeController> {
  @override
  Widget build(BuildContext context) {
    var height = AppBar().preferredSize.height;
    return Obx(
      () => Visibility(
        visible: !controller.isInitialLoading.value,
        child: Banner(
          message: 'Flutter',
          color: Get.theme.accentColor,
          location: BannerLocation.topEnd,
          child: Scaffold(
            appBar:
                !CustomizedResponsive.isSmallScreen(context) ? null : AppBar(),
            drawer: !CustomizedResponsive.isSmallScreen(context)
                ? null
                : CustomizedDrawer(),
            body: Stack(
              children: [
                Padding(
                  padding: EdgeInsets.only(
                      top: !CustomizedResponsive.isSmallScreen(context)
                          ? height
                          : 0),
                  child: SingleChildScrollView(
                    child: Column(
                      children: [
                        IntroSection(),
                        AboutSection(key: SectionKeys.about),
                        SkillsSection(key: SectionKeys.skills),
                        RepoSection(key: SectionKeys.repo),
                        ExperienceSection(key: SectionKeys.xp),
                        Footer(),
                      ],
                    ),
                  ),
                ),
                Visibility(
                  visible: !CustomizedResponsive.isSmallScreen(context),
                  child: CustomAppBar(),
                ),
              ],
            ),
          ),
        ),
        replacement: InitialLoading(),
      ),
    );
  }
}

class CustomizedDrawer extends StatelessWidget {
  CustomizedDrawer({
    Key? key,
  }) : super(key: key);
  final HomeController controller = Get.put(HomeController());
  final navItems = [
    LocaleKeys.menu_about.tr,
    LocaleKeys.menu_skills.tr,
    LocaleKeys.menu_repositories.tr,
    LocaleKeys.menu_experiences.tr
  ];

  void scrollToSpecificContext(BuildContext context) {
    Scrollable.ensureVisible(
      context,
      duration: Duration(milliseconds: 500),
      curve: Curves.fastOutSlowIn,
    );
  }

  final List<BuildContext> contexts = [
    SectionKeys.about.currentContext!,
    SectionKeys.skills.currentContext!,
    SectionKeys.repo.currentContext!,
    SectionKeys.xp.currentContext!,
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 12),
        constraints: BoxConstraints(
          minWidth: 200,
          maxWidth: 300,
        ),
        color: Get.theme.primaryColor,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              padding: EdgeInsets.symmetric(
                vertical: 30,
              ),
              child: Center(
                child: Column(
                  children: [
                    AvatarImage(),
                    SizedBox(height: 16),
                    Text(
                      'RenanKanu;',
                      style: Get.textTheme.headline5,
                    ),
                  ],
                ),
              ),
            ),
            CustomDivider(),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: List.generate(
                navItems.length,
                (index) => Container(
                  child: Obx(
                    () => MenuItem(
                      onPress: () {
                        controller.setIndexSectionSelected(index);
                        scrollToSpecificContext(
                          contexts[index],
                        );
                      },
                      isActive: index == controller.indexSectionSelected.value,
                      text: navItems[index],
                    ),
                  ),
                ),
              ),
            ),
            Expanded(
              child: Container(),
            ),
            Container(
              padding: EdgeInsets.only(bottom: 64),
              child: Center(
                child: AnimatedToggleSwitch<bool>.dual(
                  borderColor: Colors.transparent,
                  borderWidth: 0,
                  indicatorColor: Colors.transparent,
                  height: 30,
                  current: Get.isDarkMode ? false : true,
                  first: false,
                  second: true,
                  dif: 0,
                  onChanged: (b) {
                    Get.changeThemeMode(
                      Get.isDarkMode ? ThemeMode.light : ThemeMode.dark,
                    );
                  },
                  iconBuilder: (b, size, active) => b
                      ? FaIcon(
                          FontAwesomeIcons.solidSun,
                          size: 18,
                        )
                      : FaIcon(
                          FontAwesomeIcons.solidMoon,
                          size: 18,
                        ),
                  textBuilder: (b, size, active) => b
                      ? Center(child: Text('Dark'))
                      : Center(child: Text('Light')),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class CustomDivider extends StatelessWidget {
  const CustomDivider({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 8),
      child: Divider(
        thickness: 0,
        height: 1,
      ),
    );
  }
}
