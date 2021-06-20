import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:me/app/core/colors.dart';

class Themes {
  final lightTheme = ThemeData.light().copyWith(
    visualDensity: VisualDensity.adaptivePlatformDensity,
    brightness: Brightness.light,
    primaryColor: Colors.white,
    accentColor: CustomizedColors.burntSienna,
    textTheme: GoogleFonts.rubikTextTheme().copyWith(
      bodyText2: TextStyle(color: CustomizedColors.ebonyClay),
    ),
    disabledColor: CustomizedColors.ebonyClay,
  );

  final darkTheme = ThemeData.dark().copyWith(
    visualDensity: VisualDensity.adaptivePlatformDensity,
    brightness: Brightness.dark,
    primaryColor: CustomizedColors.ebonyClay,
    backgroundColor: CustomizedColors.ebonyClay,
    accentColor: CustomizedColors.burntSienna,
    scaffoldBackgroundColor: CustomizedColors.ebonyClay,
    shadowColor: CustomizedColors.black.withOpacity(0.5),
    textTheme: GoogleFonts.rubikTextTheme().copyWith(
      headline1: GoogleFonts.rubik(
        fontSize: 96,
        fontWeight: FontWeight.w300,
        letterSpacing: -1.5,
      ),
      headline2: GoogleFonts.rubik(
        fontSize: 60,
        fontWeight: FontWeight.w300,
        letterSpacing: -0.5,
      ),
      headline3: GoogleFonts.rubik(
        fontSize: 48,
        fontWeight: FontWeight.w400,
        letterSpacing: 0,
      ),
      headline4: GoogleFonts.rubik(
        fontSize: 34,
        fontWeight: FontWeight.w400,
        letterSpacing: 0.25,
      ),
      headline5: GoogleFonts.rubik(
        fontSize: 24,
        fontWeight: FontWeight.w400,
        letterSpacing: 0,
      ),
      headline6: GoogleFonts.rubik(
        fontSize: 20,
        fontWeight: FontWeight.w700,
        letterSpacing: 0.15,
      ),
      subtitle1: GoogleFonts.rubik(
        fontSize: 16,
        fontWeight: FontWeight.w400,
        letterSpacing: 0.15,
      ),
      subtitle2: GoogleFonts.rubik(
        fontSize: 14,
        fontWeight: FontWeight.w500,
        letterSpacing: 0.1,
      ),
      bodyText1: GoogleFonts.rubik(
        fontSize: 16,
        fontWeight: FontWeight.w400,
        letterSpacing: 0.5,
      ),
      bodyText2: GoogleFonts.rubik(
        fontSize: 14,
        fontWeight: FontWeight.w700,
        letterSpacing: 0.25,
      ),
    ),
    disabledColor: CustomizedColors.white,
  );
}
