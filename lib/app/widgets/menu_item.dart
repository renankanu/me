import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:me/app/core/core.dart';

class MenuItem extends StatefulWidget {
  final VoidCallback onPress;
  final bool isActive;
  final String text;

  const MenuItem({
    Key? key,
    required this.onPress,
    required this.isActive,
    required this.text,
  }) : super(key: key);
  @override
  _MenuItemState createState() => _MenuItemState();
}

class _MenuItemState extends State<MenuItem> {
  bool _isHover = false;

  Color _borderColor() {
    if (widget.isActive) {
      return Get.theme.accentColor;
    } else if (!widget.isActive & _isHover) {
      return Get.theme.accentColor.withOpacity(0.5);
    }
    return Colors.transparent;
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onHover: (value) {
        setState(() {
          _isHover = value;
        });
      },
      onTap: widget.onPress,
      child: AnimatedContainer(
        duration: Duration(milliseconds: 800),
        margin: EdgeInsets.symmetric(
            horizontal: CustomizedResponsive.isSmallScreen(context) ? 5 : 15),
        padding: EdgeInsets.symmetric(
            vertical: CustomizedResponsive.isSmallScreen(context) ? 15 : 5),
        decoration: BoxDecoration(
          border: Border(
            bottom: BorderSide(
              color: _borderColor(),
              width: 2,
            ),
          ),
        ),
        child: Text(
          widget.text,
          style: Get.textTheme.bodyText1?.copyWith(
            color: widget.isActive
                ? Get.theme.accentColor
                : Get.theme.disabledColor,
            fontWeight: widget.isActive ? FontWeight.bold : FontWeight.normal,
          ),
        ),
      ),
    );
  }
}
