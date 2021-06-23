import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:me/app/core/colors.dart';

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

class _ItemSkillState extends State<ItemSkill> with TickerProviderStateMixin {
  late final AnimationController _controller;
  late final Animation<double> _animation;
  bool _isHover = false;

  @override
  void initState() {
    _controller = AnimationController(
      duration: const Duration(milliseconds: 300),
      vsync: this,
    );

    _animation = CurvedAnimation(
      parent: _controller,
      curve: Curves.easeInBack,
    );
    super.initState();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      cursor: SystemMouseCursors.click,
      onEnter: (event) {
        setState(() {
          _isHover = true;
        });
        _controller.forward();
      },
      onExit: (event) {
        setState(() {
          _isHover = false;
        });
        _controller.reverse();
      },
      child: ScaleTransition(
        scale: Tween(begin: 0.96, end: 1.0).animate(_animation),
        child: Container(
          width: 240,
          height: 240,
          decoration: BoxDecoration(
            color: Get.theme.hintColor,
            borderRadius: BorderRadius.circular(6),
            border: Border.all(color: Get.theme.dividerColor),
            boxShadow: _isHover
                ? [
                    BoxShadow(
                      color: Get.theme.dividerColor,
                      offset: Offset(0, 1),
                      blurRadius: 3,
                    ),
                  ]
                : null,
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(widget.label),
              SizedBox(height: 24),
              Visibility(
                visible: widget.icon != '',
                child: Image.asset(
                  widget.icon,
                  height: 120,
                ),
                replacement: FlutterLogo(
                  size: 120,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
