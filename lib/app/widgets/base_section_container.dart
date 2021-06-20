import 'package:flutter/material.dart';

class BaseSectionContainer extends StatelessWidget {
  const BaseSectionContainer({Key? key, required this.body}) : super(key: key);

  final Widget body;

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    return Container(
      width: 960,
      constraints: BoxConstraints(minHeight: height),
      child: body,
    );
  }
}