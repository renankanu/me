import 'package:flutter/material.dart';

class BaseSectionContainer extends StatelessWidget {
  const BaseSectionContainer({Key? key, required this.child}) : super(key: key);

  final Widget child;

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    var heightAppBar = AppBar().preferredSize.height;
    return Container(
      width: 960,
      constraints: BoxConstraints(minHeight: height - heightAppBar),
      child: child,
    );
  }
}
