import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ItemSkill extends StatefulWidget {
  const ItemSkill({
    Key? key,
    required this.label,
    required this.icon,
  }) : super(key: key);
  final String label;
  final String icon;

  @override
  _ItemSkillState createState() => _ItemSkillState();
}

class _ItemSkillState extends State<ItemSkill> {
  bool _isHover = false;
  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      cursor: SystemMouseCursors.click,
      onEnter: (event) {
        setState(() {
          _isHover = true;
        });
      },
      onExit: (event) {
        setState(() {
          _isHover = false;
        });
      },
      child: Container(
        width: 240,
        decoration: BoxDecoration(
          color: Get.theme.accentColor,
          borderRadius: BorderRadius.circular(6),
          boxShadow: _isHover
              ? [
                  BoxShadow(
                    color: Get.theme.shadowColor,
                    offset: Offset(1, 2),
                    blurRadius: 7,
                    spreadRadius: 2,
                  ),
                ]
              : null,
        ),
        child: Column(
          children: [
            Text(widget.label),
            Text(widget.icon),
          ],
        ),
      ),
    );
  }
}
