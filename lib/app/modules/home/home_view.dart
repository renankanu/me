import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:me/app/core/core.dart';
import 'package:me/app/modules/home/widgets/initial_loading.dart';
import 'package:me/app/sections/about/about_section.dart';
import 'package:me/app/sections/experience/experience_section.dart';
import 'package:me/app/sections/intro/intro_section.dart';
import 'package:me/app/sections/repo/repo_section.dart';
import 'package:me/app/sections/skills/skills_section.dart';
import 'package:me/app/widgets/avatar_images.dart';
import 'package:me/app/widgets/container_flag.dart';
import 'package:me/app/widgets/custom_app_bar.dart';
import 'package:me/app/widgets/footer.dart';
import 'package:me/app/widgets/menu_item.dart';
import 'package:me/app/widgets/theme_mode_toggle.dart';
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
          color: Get.theme.colorScheme.secondary,
          location: BannerLocation.topEnd,
          child: Scaffold(
            appBar: !CustomizedResponsive.isSmallScreen()
                ? null
                : AppBar(
                    backgroundColor: Get.theme.primaryColor,
                    iconTheme: Get.theme.iconTheme,
                  ),
            drawer: !CustomizedResponsive.isSmallScreen()
                ? null
                : CustomizedDrawer(),
            body: Stack(
              children: [
                Padding(
                  padding: EdgeInsets.only(
                    top: !CustomizedResponsive.isSmallScreen() ? height : 0,
                  ),
                  child: SingleChildScrollView(
                    child: Column(
                      children: [
                        IntroSection(key: SectionKeys.intro),
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
                  visible: !CustomizedResponsive.isSmallScreen(),
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
  void scrollToSpecificContext(BuildContext context) {
    Scrollable.ensureVisible(
      context,
      duration: Duration(milliseconds: 500),
      curve: Curves.fastOutSlowIn,
    );
  }

  @override
  Widget build(BuildContext context) {
    final navItems = [
      LocaleKeys.menu_about.tr,
      LocaleKeys.menu_skills.tr,
      LocaleKeys.menu_repositories.tr,
      LocaleKeys.menu_experiences.tr
    ];

    final List<BuildContext> contexts = [
      SectionKeys.about.currentContext!,
      SectionKeys.skills.currentContext!,
      SectionKeys.repo.currentContext!,
      SectionKeys.xp.currentContext!,
    ];
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
            InkWell(
              onTap: () {
                scrollToSpecificContext(SectionKeys.intro.currentContext!);
                Get.back();
              },
              child: Container(
                padding: EdgeInsets.symmetric(
                  vertical: 30,
                ),
                child: Center(
                  child: Column(
                    children: [
                      AvatarImage(
                        size: 120,
                        borderWidth: 2,
                      ),
                      SizedBox(height: 16),
                      Text(
                        'RenanKanu;',
                        style: Get.textTheme.headline4!.copyWith(
                          fontSize: 18,
                        ),
                      ),
                    ],
                  ),
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
                        Get.back();
                      },
                      isActive: index == controller.indexSectionSelected.value,
                      text: navItems[index],
                    ),
                  ),
                ),
              ),
            ),
            Spacer(),
            Container(
              alignment: Alignment.center,
              padding: EdgeInsets.symmetric(vertical: 16),
              child: Column(
                children: [
                  ThemeModeToggle(height: 28),
                  SizedBox(height: 12),
                  ContainerFlag(),
                ],
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
