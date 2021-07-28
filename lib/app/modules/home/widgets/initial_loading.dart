import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:loading_animations/loading_animations.dart';

class InitialLoading extends StatelessWidget {
  const InitialLoading({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          RichText(
            text: TextSpan(
              text: 'R',
              style: Get.textTheme.headline1?.copyWith(
                fontWeight: FontWeight.w900,
                color: Get.theme.cardColor,
                fontSize: 26,
              ),
              children: <TextSpan>[
                TextSpan(
                  text: 'K',
                  style: TextStyle(
                    color: Get.theme.cardColor,
                    fontWeight: FontWeight.w400,
                    fontSize: 26,
                  ),
                )
              ],
            ),
          ),
          SizedBox(height: 20),
          LoadingBouncingGrid.square(
            size: 40,
            backgroundColor: Get.theme.cardColor,
            duration: Duration(seconds: 1),
          ),
        ],
      ),
    );
  }
}
