import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var height = AppBar().preferredSize.height;
    return Container(
      height: height,
      decoration: BoxDecoration(
        color: Get.theme.primaryColor,
        boxShadow: [
          BoxShadow(
            color: Colors.black,
            offset: Offset(0.0, 1.0),
            blurRadius: 6.0,
          )
        ],
      ),
      child: Row(
        children: [
          RichText(
            text: TextSpan(
              text: '<Renan',
              style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.w600,
                  fontSize: 26),
              children: <TextSpan>[
                TextSpan(
                  text: 'Kanu>',
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.w400,
                    fontSize: 26,
                  ),
                )
              ],
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
            ),
          )
        ],
      ),
    );
  }
}
