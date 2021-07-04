import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ContainerExperience extends StatelessWidget {
  const ContainerExperience({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return IntrinsicHeight(
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.stretch,
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
          Flexible(
            child: Row(
              children: [
                Container(
                  width: 10,
                  height: 1,
                  color: Get.theme.accentColor,
                ),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(vertical: 20),
                    child: Container(
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
                            Text('Megaleios'),
                            Text('2016 - 2017'),
                            Text(
                                'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Enim eveniet incidunt quidem illum repellat, a nemo cumque optio asperiores tempora delectus cupiditate'),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
