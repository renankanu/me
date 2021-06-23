import 'package:flutter/material.dart';
import 'package:get/get.dart';

class BaseSectionContainer extends StatelessWidget {
  const BaseSectionContainer({Key? key, required this.child, this.background})
      : super(key: key);

  final Widget child;
  final Color? background;

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    var heightAppBar = AppBar().preferredSize.height;
    return Container(
      width: double.infinity,
      color: background ?? Get.theme.primaryColor,
      child: Center(
        child: Container(
          width: 960,
          constraints: BoxConstraints(minHeight: height - heightAppBar),
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 60),
            child: child,
          ),
        ),
      ),
    );
  }
}
