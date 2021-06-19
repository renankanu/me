import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:me/app/widgets/custom_app_bar.dart';

import 'home_controller.dart';

class HomeView extends GetView<HomeController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          CustomAppBar(),
          Center(
            child: Text(
              'HomeView is working =>',
              style: TextStyle(fontSize: 20),
            ),
          ),
        ],
      ),
    );
  }
}
