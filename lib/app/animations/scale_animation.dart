import 'package:flutter/material.dart';
import 'package:visibility_detector/visibility_detector.dart';

class ScaleAnimation extends StatefulWidget {
  const ScaleAnimation({
    Key? key,
    required this.child,
    this.percentToShow = 75,
    this.percentToHide = 50,
  }) : super(key: key);

  final Widget child;
  final int percentToShow;
  final int percentToHide;

  @override
  _ScaleAnimationState createState() => _ScaleAnimationState();
}

class _ScaleAnimationState extends State<ScaleAnimation>
    with TickerProviderStateMixin {
  late final AnimationController _controller;
  late final Animation<double> _animation;

  @override
  void initState() {
    _controller = AnimationController(
      duration: const Duration(milliseconds: 500),
      vsync: this,
    );

    _animation = CurvedAnimation(
      parent: _controller,
      curve: Curves.fastOutSlowIn,
    );
    super.initState();
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
        if (visiblePercentage >= 75) {
          _controller.forward();
        }
        if (visiblePercentage < 50) {
          _controller.reverse();
        }
      },
      child: ScaleTransition(
        scale: _animation,
        child: widget.child,
      ),
    );
  }
}
