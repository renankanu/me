import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get.dart';

class Footer extends StatefulWidget {
  const Footer({
    Key? key,
  }) : super(key: key);

  @override
  _FooterState createState() => _FooterState();
}

class _FooterState extends State<Footer> with SingleTickerProviderStateMixin {
  late final AnimationController _controller = AnimationController(
    duration: const Duration(seconds: 2),
    vsync: this,
  )..repeat(reverse: true);
  late final Animation<Offset> _offsetAnimation = Tween<Offset>(
    begin: Offset.zero,
    end: const Offset(0.0, -0.5),
  ).animate(CurvedAnimation(
    parent: _controller,
    curve: Curves.elasticIn,
  ));

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Get.theme.primaryColor,
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 12),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 8),
                  child: Text(
                    '${DateTime.now().year}',
                    style: TextStyle(color: Get.theme.accentColor),
                  ),
                ),
                SizedBox(height: 16),
                Padding(
                  padding: const EdgeInsets.only(left: 8),
                  child: Text(
                    'aaaaa',
                    style: TextStyle(color: Get.theme.accentColor),
                  ),
                ),
              ],
            ),
            SlideTransition(
              position: _offsetAnimation,
              child: Padding(
                padding: EdgeInsets.all(8.0),
                child: Container(
                  width: 46,
                  height: 46,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(46 / 2),
                    color: Get.theme.hintColor,
                  ),
                  child: Center(
                    child: FaIcon(
                      FontAwesomeIcons.chevronUp,
                    ),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
