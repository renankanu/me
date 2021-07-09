import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/route_manager.dart';

class RowSocialMedia extends StatefulWidget {
  const RowSocialMedia({Key? key}) : super(key: key);

  @override
  _RowSocialMediaState createState() => _RowSocialMediaState();
}

class _RowSocialMediaState extends State<RowSocialMedia> {
  final List<IconData> list = [
    FontAwesomeIcons.linkedinIn,
    FontAwesomeIcons.github,
    FontAwesomeIcons.mediumM,
    FontAwesomeIcons.spotify,
    FontAwesomeIcons.twitter,
  ];

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: list
                .map(
                  (icon) => SocialMediaButton(
                    onPressSocialMedia: () {},
                    icon: icon,
                  ),
                )
                .toList(),
          ),
        ],
      ),
    );
  }
}

class SocialMediaButton extends StatefulWidget {
  const SocialMediaButton({
    Key? key,
    required this.icon,
    required this.onPressSocialMedia,
  }) : super(key: key);

  final IconData icon;
  final Function() onPressSocialMedia;

  @override
  _SocialMediaButtonState createState() => _SocialMediaButtonState();
}

class _SocialMediaButtonState extends State<SocialMediaButton> {
  bool _isHover = false;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: InkWell(
        onHover: (value) {
          setState(() {
            _isHover = value;
          });
        },
        borderRadius: BorderRadius.circular(42 / 2),
        onTap: widget.onPressSocialMedia,
        child: Container(
          height: 42,
          width: 42,
          decoration: BoxDecoration(
            color: _isHover ? Get.theme.accentColor.withOpacity(0.2) : null,
            borderRadius: BorderRadius.circular(60),
            border: Border.all(
              width: 2,
              color: Get.theme.accentColor,
            ),
          ),
          child: Center(
            child: FaIcon(
              widget.icon,
              color: Get.theme.accentColor,
            ),
          ),
        ),
      ),
    );
  }
}
