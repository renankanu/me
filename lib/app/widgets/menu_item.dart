import 'package:flutter/material.dart';
import 'package:me/app/core/colors.dart';

class MenuItem extends StatefulWidget {
  final String title;
  final Function(bool) onHover;
  final Function() onPress;
  final bool isHover;

  const MenuItem(
      {Key? key,
      required this.onHover,
      required this.isHover,
      required this.title,
      required this.onPress})
      : super(key: key);
  @override
  _MenuItemState createState() => _MenuItemState();
}

class _MenuItemState extends State<MenuItem> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: InkWell(
        onHover: widget.onHover,
        onTap: widget.onPress,
        child: Container(
          height: 30,
          child: Stack(
            children: [
              Align(
                child: Text(
                  widget.title,
                  style: TextStyle(
                    color: widget.isHover
                        ? CustumizedColors.vistaBlue
                        : CustumizedColors.white,
                  ),
                ),
              ),
              Positioned.fill(
                  child: Align(
                alignment: Alignment.bottomCenter,
                child: Visibility(
                  maintainAnimation: true,
                  maintainState: true,
                  maintainSize: true,
                  visible: widget.isHover,
                  child: Container(
                    height: 2,
                    width: 20,
                    color: CustumizedColors.vistaBlue,
                  ),
                ),
              ))
            ],
          ),
        ),
      ),
    );
  }
}
