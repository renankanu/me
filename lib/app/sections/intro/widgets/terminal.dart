import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:me/app/core/colors.dart';
import 'package:me/app/core/responsive.dart';

import 'actions_terminal.dart';

class Terminal extends StatelessWidget {
  const Terminal({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Container(
        decoration: BoxDecoration(
          color: CustomizedColors.charade,
          borderRadius: BorderRadius.all(
            Radius.circular(6),
          ),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.3),
              offset: Offset(0, 1),
              blurRadius: 4,
            ),
          ],
        ),
        child: Padding(
          padding: EdgeInsets.only(
            left: 12,
            top: 8,
            right: 12,
            bottom: CustomizedResponsive.getHeight(0.15),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ActionsTerminal(),
              SizedBox(height: 20),
              RichText(
                text: TextSpan(
                  text: 'kanu ',
                  style: TextStyle(
                    color: CustomizedColors.texas,
                    fontSize: CustomizedResponsive.isSmallScreen() ? 15 : 30,
                  ),
                  children: <TextSpan>[
                    TextSpan(
                        text: 'in ',
                        style: TextStyle(color: CustomizedColors.white)),
                    TextSpan(
                        text: '~',
                        style: TextStyle(color: CustomizedColors.frenchPass)),
                  ],
                ),
              ),
              SizedBox(height: 8),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    '??? ',
                    style: GoogleFonts.firaCode(
                      textStyle: Get.textTheme.bodyText2?.copyWith(
                        fontSize:
                            CustomizedResponsive.isSmallScreen() ? 15 : 22,
                        color: CustomizedColors.mantis,
                      ),
                    ),
                  ),
                  AnimatedTextKit(
                    repeatForever: true,
                    animatedTexts: [
                      TypewriterAnimatedText(
                        'flutter create renankanu',
                        speed: Duration(milliseconds: 200),
                        textStyle: TextStyle(
                          fontSize:
                              CustomizedResponsive.isSmallScreen() ? 15 : 30,
                          color: CustomizedColors.white,
                        ),
                        textAlign: TextAlign.start,
                      ),
                      TypewriterAnimatedText(
                        'cd renankanu',
                        speed: Duration(milliseconds: 200),
                        textStyle: TextStyle(
                          fontSize:
                              CustomizedResponsive.isSmallScreen() ? 15 : 30,
                          color: CustomizedColors.white,
                        ),
                        textAlign: TextAlign.start,
                      ),
                      TypewriterAnimatedText(
                        'flutter run -d chrome',
                        speed: Duration(milliseconds: 200),
                        textStyle: TextStyle(
                          fontSize:
                              CustomizedResponsive.isSmallScreen() ? 15 : 30,
                          color: CustomizedColors.white,
                        ),
                        textAlign: TextAlign.start,
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
