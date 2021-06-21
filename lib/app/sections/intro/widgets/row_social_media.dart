import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/route_manager.dart';

class RowSocialMedia extends StatelessWidget {
  const RowSocialMedia({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SocialMediaButton(
            onPressSocialMedia: () {},
            icon: FontAwesomeIcons.twitter,
          ),
          SocialMediaButton(
            onPressSocialMedia: () {},
            icon: FontAwesomeIcons.linkedinIn,
          ),
          SocialMediaButton(
            onPressSocialMedia: () {},
            icon: FontAwesomeIcons.github,
          ),
          SocialMediaButton(
            onPressSocialMedia: () {},
            icon: FontAwesomeIcons.mediumM,
          ),
          SocialMediaButton(
            onPressSocialMedia: () {},
            icon: FontAwesomeIcons.spotify,
          ),
        ],
      ),
    );
  }
}

class SocialMediaButton extends StatelessWidget {
  const SocialMediaButton({
    Key? key,
    required this.icon,
    required this.onPressSocialMedia,
  }) : super(key: key);

  final IconData icon;
  final Function() onPressSocialMedia;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      borderRadius: BorderRadius.circular(20),
      onTap: onPressSocialMedia,
      child: Container(
        height: 42,
        width: 42,
        margin: EdgeInsets.symmetric(horizontal: 8),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(60),
            border: Border.all(
              width: 2,
              color: Get.theme.accentColor,
            )),
        child: Center(
          child: FaIcon(
            icon,
            color: Get.theme.accentColor,
          ),
        ),
      ),
    );
  }
}
