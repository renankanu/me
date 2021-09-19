import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:me/app/core/core.dart';

class ContainerFlag extends StatelessWidget {
  ContainerFlag({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        FlagContainer(
          icon: CustomizedImages.icBr,
          onPress: () {
            Get.updateLocale(Locale('pt', 'BR'));
          },
          isSelected: Get.locale == Locale('en', 'US'),
        ),
        SizedBox(width: 8),
        FlagContainer(
          icon: CustomizedImages.icEn,
          onPress: () {
            Get.updateLocale(Locale('en', 'US'));
          },
          isSelected: Get.locale != Locale('en', 'US'),
        ),
      ],
    );
  }
}

class FlagContainer extends StatelessWidget {
  const FlagContainer({
    Key? key,
    required this.icon,
    required this.onPress,
    required this.isSelected,
  }) : super(key: key);
  final String icon;
  final Function() onPress;
  final bool isSelected;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 28,
      child: Stack(
        children: [
          Image.asset(icon),
          Positioned.fill(
            child: InkWell(
              onTap: onPress,
              child: Container(
                color: isSelected
                    ? Get.theme.primaryColor.withOpacity(0.8)
                    : Colors.transparent,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
