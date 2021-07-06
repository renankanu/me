import 'package:flutter/material.dart';
import 'package:get/get.dart';

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
                  width: 10,
                  height: 10,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10 / 2),
                    color: Get.theme.accentColor,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 5),
                child: Container(
                  width: 1,
                  color: Get.theme.accentColor,
                ),
              ),
            ],
          ),
          Row(
            children: [
              Container(
                width: 10,
                height: 1,
                color: Get.theme.accentColor,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 20),
                child: Container(
                  width: 600,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(4),
                    border: Border.all(
                      color: Get.theme.accentColor,
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
