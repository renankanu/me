import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:me/app/core/colors.dart';
import 'package:me/app/utils/date_formatter.dart';
import 'package:url_launcher/url_launcher.dart';

class CardPinned extends StatelessWidget {
  final dynamic repo;

  const CardPinned({Key? key, this.repo}) : super(key: key);
  @override
  Widget build(BuildContext context) {
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

    return Container(
      constraints: BoxConstraints(maxWidth: 400),
      child: InkWell(
        onTap: () => _launchInBrowser(repo['url'] ?? ''),
        child: Card(
          shadowColor: CustomizedColors.background,
          elevation: 5,
          color: CustomizedColors.mako,
          child: Padding(
            padding: const EdgeInsets.symmetric(
              vertical: 16,
              horizontal: 20,
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  repo['name'],
                  style: TextStyle(
                    fontWeight: FontWeight.w500,
                    color: CustomizedColors.white,
                    fontSize: 14,
                  ),
                ),
                SizedBox(height: 10),
                Container(
                  height: 40,
                  child: Text(
                    repo['description'],
                    style: TextStyle(
                      color: CustomizedColors.white.withOpacity(0.8),
                      fontSize: 11,
                    ),
                  ),
                ),
                SizedBox(height: 18),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Container(
                          width: 14,
                          height: 14,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.all(
                                Radius.circular(20),
                              ),
                              color:
                                  HexColor(repo['primaryLanguage']['color'])),
                        ),
                        SizedBox(width: 8),
                        Text(
                          repo['primaryLanguage']['name'],
                          style: TextStyle(
                            color: CustomizedColors.white.withOpacity(0.8),
                            fontSize: 11,
                          ),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        FaIcon(
                          FontAwesomeIcons.syncAlt,
                          size: 12,
                          color: Colors.white,
                          semanticLabel: 'icon sync repository',
                        ),
                        SizedBox(width: 8),
                        Text(
                          DateFormateUtils.converterDateWithHours(
                              repo['updatedAt']),
                          style: TextStyle(
                            color: CustomizedColors.white.withOpacity(0.8),
                            fontSize: 11,
                          ),
                        ),
                      ],
                    )
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
