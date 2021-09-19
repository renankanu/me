import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:me/app/core/core.dart';

class ContainerExperience extends StatelessWidget {
  const ContainerExperience({
    Key? key,
    required this.title,
    required this.date,
    required this.description,
  }) : super(key: key);

  final String title;
  final String date;
  final String description;

  @override
  Widget build(BuildContext context) {
    return IntrinsicHeight(
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Stack(
            children: [
              Center(
                child: Container(
                  width: 14,
                  height: 14,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(14 / 2),
                    color: Get.theme.colorScheme.secondary,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 7),
                child: Container(
                  width: 2,
                  color: Get.theme.colorScheme.secondary,
                ),
              ),
            ],
          ),
          Row(
            children: [
              Container(
                width: 10,
                height: 2,
                color: Get.theme.colorScheme.secondary,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 20),
                child: Container(
                  width: CustomizedResponsive.isLargeScreen() ? 600 : 310,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(4),
                    border: Border.all(
                      width: 2,
                      color: Get.theme.colorScheme.secondary,
                    ),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          title,
                          style: Get.textTheme.subtitle2!
                              .copyWith(fontSize: 18, letterSpacing: 2),
                        ),
                        SizedBox(height: 20),
                        Text(
                          date,
                          style: TextStyle(fontSize: 16),
                        ),
                        SizedBox(height: 4),
                        Text(description),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
