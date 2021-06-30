import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:me/app/core/colors.dart';
import 'package:me/app/widgets/menu_item.dart';
import 'package:me/generated/locales.g.dart';

class CustomAppBar extends StatefulWidget {
  const CustomAppBar({Key? key}) : super(key: key);

  @override
  _CustomAppBarState createState() => _CustomAppBarState();
}

class _CustomAppBarState extends State<CustomAppBar> {
  final navItems = [
    LocaleKeys.menu_about.tr,
    LocaleKeys.menu_skills.tr,
    LocaleKeys.menu_repositories.tr,
    LocaleKeys.menu_experiences.tr
  ];
  var selectedItemIndex = -1;
  @override
  Widget build(BuildContext context) {
    var height = AppBar().preferredSize.height;
    return Container(
      height: height,
      decoration: BoxDecoration(
        color: Get.theme.primaryColor,
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.3),
            offset: Offset(0, 1),
            blurRadius: 4,
          )
        ],
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 100),
        child: Row(
          children: [
            Expanded(
              child: RichText(
                text: TextSpan(
                  text: 'R',
                  style: Get.textTheme.headline1?.copyWith(
                    fontWeight: FontWeight.w900,
                    color: CustomizedColors.white,
                    fontSize: 26,
                  ),
                  children: <TextSpan>[
                    TextSpan(
                      text: 'K',
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w400,
                        fontSize: 26,
                      ),
                    )
                  ],
                ),
              ),
            ),
            Row(
              children: List.generate(
                navItems.length,
                (index) => Container(
                  child: MenuItem(
                    onPress: () {
                      setState(() {
                        selectedItemIndex = index;
                      });
                    },
                    isActive: selectedItemIndex == index,
                    text: navItems[index],
                  ),
                ),
              ),
            ),
            MaterialButton(
              onPressed: () {
                Get.changeThemeMode(
                  Get.isDarkMode ? ThemeMode.light : ThemeMode.dark,
                );
              },
              child: FaIcon(
                Get.isDarkMode
                    ? FontAwesomeIcons.lightbulb
                    : FontAwesomeIcons.solidLightbulb,
                size: 16,
              ),
            )
          ],
        ),
      ),
    );
  }
}
