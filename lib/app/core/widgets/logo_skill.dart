import 'package:flutter/material.dart';

class LogoSkill extends StatelessWidget {
  const LogoSkill({
    Key? key,
    required this.icon,
    this.height,
  }) : super(key: key);

  final String icon;
  final double? height;

  @override
  Widget build(BuildContext context) {
    return Visibility(
      visible: icon != '',
      child: Image.asset(
        icon,
        height: height ?? 100,
        semanticLabel: 'logo $icon',
      ),
      replacement: FlutterLogo(
        size: height ?? 100,
      ),
    );
  }
}
