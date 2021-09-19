import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/route_manager.dart';
import 'package:me/app/model/social_media.dart';
import 'package:url_launcher/url_launcher.dart';

class RowSocialMedia extends StatefulWidget {
  const RowSocialMedia({Key? key}) : super(key: key);

  @override
  _RowSocialMediaState createState() => _RowSocialMediaState();
}

class _RowSocialMediaState extends State<RowSocialMedia> {
  final List<SocialMedia> list = [
    SocialMedia(
        icon: FontAwesomeIcons.linkedinIn,
        url: 'https://www.linkedin.com/in/renansantosbr/'),
    SocialMedia(
        icon: FontAwesomeIcons.github, url: 'https://github.com/renankanu'),
    SocialMedia(
        icon: FontAwesomeIcons.mediumM, url: 'https://medium.com/@renankanu'),
    SocialMedia(
        icon: FontAwesomeIcons.spotify,
        url:
            'https://open.spotify.com/user/renankanu?si=8B55A_C1RRCYOUcv56O1-g&utm_source=copy-link&dl_branch=1&nd=1'),
    SocialMedia(
        icon: FontAwesomeIcons.twitter,
        url: 'https://twitter.com/RenanSa38311125?s=08'),
  ];

  Future<void> _launchInBrowser(String url) async {
    if (await canLaunch(url)) {
      await launch(
        url,
        forceSafariVC: false,
        forceWebView: false,
      );
    } else {
      throw 'Could not launch $url';
    }
  }

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
                  (socialMedia) => SocialMediaButton(
                    key: UniqueKey(),
                    onPressSocialMedia: () {
                      _launchInBrowser(socialMedia.url);
                    },
                    icon: socialMedia.icon,
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
            color: _isHover
                ? Get.theme.colorScheme.secondary.withOpacity(0.2)
                : null,
            borderRadius: BorderRadius.circular(60),
            border: Border.all(
              width: 2,
              color: Get.theme.colorScheme.secondary,
            ),
          ),
          child: Center(
            child: FaIcon(
              widget.icon,
              color: Get.theme.colorScheme.secondary,
              semanticLabel: 'Icon social media',
            ),
          ),
        ),
      ),
    );
  }
}
