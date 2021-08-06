import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:me/app/core/core.dart';

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
    begin: const Offset(0.0, 0.15),
    end: const Offset(0.0, -0.3),
  ).animate(
    CurvedAnimation(
      parent: _controller,
      curve: Curves.easeIn,
    ),
  );

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  void scrollToSpecificContext(BuildContext context) {
    Scrollable.ensureVisible(
      context,
      duration: Duration(milliseconds: 500),
      curve: Curves.fastOutSlowIn,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80,
      color: Get.theme.primaryColor,
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 12),
        child: Stack(
          children: [
            Center(
              child: Padding(
                padding: const EdgeInsets.only(left: 8),
                child: Text(
                  '© ${DateTime.now().year} RenanKanu',
                  style: TextStyle(color: Get.theme.accentColor),
                ),
              ),
            ),
            Align(
              alignment: Alignment.centerRight,
              child: SlideTransition(
                position: _offsetAnimation,
                child: Padding(
                  padding: EdgeInsets.all(8.0),
                  child: InkWell(
                    onTap: () {
                      scrollToSpecificContext(
                          SectionKeys.intro.currentContext!);
                    },
                    child: Container(
                      width: 40,
                      height: 40,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(46 / 2),
                        color: Get.theme.hintColor,
                      ),
                      child: Center(
                        child: FaIcon(
                          FontAwesomeIcons.chevronUp,
                          semanticLabel: 'icon arrow to top',
                        ),
                      ),
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
