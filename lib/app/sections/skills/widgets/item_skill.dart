import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:get/get.dart';
import 'package:me/app/model/skill.dart';
import 'package:me/app/routes/app_pages.dart';
import 'package:me/app/widgets/logo_skill.dart';

class ItemSkill extends StatefulWidget {
  const ItemSkill({
    Key? key,
    required this.skill,
  }) : super(key: key);
  final Skill skill;

  @override
  _ItemSkillState createState() => _ItemSkillState();
}

class _ItemSkillState extends State<ItemSkill>
    with TickerProviderStateMixin<ItemSkill> {
  late final AnimationController _controller;
  late final Animation<double> _animation;

  @override
  void initState() {
    _controller = AnimationController(
      duration: const Duration(milliseconds: 100),
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
        setState(() {});
        _controller.forward();
      },
      onExit: (event) {
        setState(() {});
        _controller.reverse();
      },
      child: InkWell(
        onTap: () {
          Get.toNamed(Routes.DETAIL_SKILL, arguments: widget.skill);
        },
        child: ScaleTransition(
          scale: Tween(begin: 0.96, end: 1.0).animate(_animation),
          child: Container(
            width: 200,
            height: 200,
            decoration: BoxDecoration(
              color: Get.theme.hintColor,
              borderRadius: BorderRadius.circular(6),
              border: Border.all(
                color: Get.theme.dividerColor,
                width: 1,
              ),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(widget.skill.name!),
                SizedBox(height: 24),
                LogoSkill(icon: widget.skill.icon!)
              ],
            ),
          ),
        ),
      ),
    );
  }
}
