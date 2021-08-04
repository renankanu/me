import 'package:flutter/material.dart';

class LogoSkill extends StatelessWidget {
  const LogoSkill({
    Key? key,
    required this.icon,
  }) : super(key: key);

  final String icon;

  @override
  Widget build(BuildContext context) {
    return Visibility(
      visible: icon != '',
      child: Image.asset(
        icon,
        height: 100,
      ),
      replacement: FlutterLogo(
        size: 100,
      ),
    );
  }
}
