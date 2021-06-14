import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:me/app/widgets/menu_item.dart';

class CustomAppBar extends StatefulWidget {
  const CustomAppBar({Key? key}) : super(key: key);

  @override
  _CustomAppBarState createState() => _CustomAppBarState();
}

class _CustomAppBarState extends State<CustomAppBar> {
  List<bool> _isHovering = [false, false, false, false];
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
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Row(
          children: [
            Expanded(
              child: RichText(
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
            ),
            Row(
              children: [
                MenuItem(
                  title: 'about',
                  onHolver: (value) {
                    setState(() {
                      _isHovering[0] = value;
                    });
                  },
                  onPress: () {},
                  isHolver: _isHovering[0],
                ),
                MenuItem(
                  title: 'about',
                  onHolver: (value) {
                    setState(() {
                      _isHovering[0] = value;
                    });
                  },
                  onPress: () {},
                  isHolver: _isHovering[0],
                ),
                MenuItem(
                  title: 'about',
                  onHolver: (value) {
                    setState(() {
                      _isHovering[0] = value;
                    });
                  },
                  onPress: () {},
                  isHolver: _isHovering[0],
                ),
                MenuItem(
                  title: 'about',
                  onHolver: (value) {
                    setState(() {
                      _isHovering[0] = value;
                    });
                  },
                  onPress: () {},
                  isHolver: _isHovering[0],
                ),
                MenuItem(
                  title: 'about',
                  onHolver: (value) {
                    setState(() {
                      _isHovering[0] = value;
                    });
                  },
                  onPress: () {},
                  isHolver: _isHovering[0],
                ),
                MenuItem(
                  title: 'about',
                  onHolver: (value) {
                    setState(() {
                      _isHovering[0] = value;
                    });
                  },
                  onPress: () {},
                  isHolver: _isHovering[0],
                ),
              ],
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
      ),
    );
  }
}
