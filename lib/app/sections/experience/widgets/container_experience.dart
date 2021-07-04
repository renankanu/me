import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ContainerExperience extends StatelessWidget {
  const ContainerExperience({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Row(
        // crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Container(
            child: Stack(
              children: [
                Container(
                  width: 10,
                  height: 10,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10 / 2),
                    color: Get.theme.accentColor,
                  ),
                ),
                Container(
                  width: 1,
                  color: Colors.amber,
                )
              ],
            ),
          ),
          Container(
            width: 10,
            height: 1,
            color: Get.theme.accentColor,
          ),
          Expanded(
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
        ],
      ),
    );
  }
}
