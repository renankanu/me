import 'package:flutter/material.dart';
import 'package:visibility_detector/visibility_detector.dart';

class SlideAnimation extends StatefulWidget {
  const SlideAnimation(
      {Key? key, required this.child, this.millisecondsDuration = 500})
      : super(key: key);

  final Widget child;
  final int millisecondsDuration;

  @override
  _SlideAnimationState createState() => _SlideAnimationState();
}

class _SlideAnimationState extends State<SlideAnimation>
    with SingleTickerProviderStateMixin<SlideAnimation> {
  late final AnimationController _controller;
  late final Animation<Offset> _offsetAnimation;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      duration: Duration(milliseconds: widget.millisecondsDuration),
      vsync: this,
    );

    _offsetAnimation = Tween<Offset>(
      begin: const Offset(5.0, 0.0),
      end: Offset.zero,
    ).animate(
      CurvedAnimation(
        parent: _controller,
        curve: Curves.fastOutSlowIn,
      ),
    );
  }

  @override
  void dispose() {
    super.dispose();
    _controller.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return VisibilityDetector(
      key: UniqueKey(),
      onVisibilityChanged: (visibilityInfo) {
        var visiblePercentage = visibilityInfo.visibleFraction * 100;
        if (visiblePercentage == 100) {
          _controller.forward();
        }
        if (visiblePercentage < 50) {
          _controller.reverse();
        }
      },
      child: SlideTransition(
        position: _offsetAnimation,
        child: widget.child,
      ),
    );
  }
}
