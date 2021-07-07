import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:me/app/core/colors.dart';

class Themes {
  final lightTheme = ThemeData.light().copyWith(
    visualDensity: VisualDensity.adaptivePlatformDensity,
    brightness: Brightness.light,
    primaryColor: Colors.white,
    accentColor: CustomizedColors.burntSienna,
    scaffoldBackgroundColor: CustomizedColors.white,
    hintColor: CustomizedColors.alto,
    shadowColor: CustomizedColors.black.withOpacity(0.5),
    dividerColor: CustomizedColors.black.withOpacity(0.5),
    cardColor: CustomizedColors.ebonyClay,
    disabledColor: CustomizedColors.ebonyClay,
    textTheme: GoogleFonts.rubikTextTheme().copyWith(
      headline1: GoogleFonts.rubik(
        fontSize: 96,
        fontWeight: FontWeight.w300,
        letterSpacing: -1.5,
        color: CustomizedColors.ebonyClay,
      ),
      headline2: GoogleFonts.rubik(
        fontSize: 60,
        fontWeight: FontWeight.w300,
        letterSpacing: -0.5,
        color: CustomizedColors.ebonyClay,
      ),
      headline3: GoogleFonts.rubik(
        fontSize: 48,
        fontWeight: FontWeight.w400,
        letterSpacing: 0,
        color: CustomizedColors.ebonyClay,
      ),
      headline4: GoogleFonts.rubik(
        fontSize: 34,
        fontWeight: FontWeight.w400,
        letterSpacing: 0.25,
        color: CustomizedColors.ebonyClay,
      ),
      headline5: GoogleFonts.rubik(
        fontSize: 24,
        fontWeight: FontWeight.w700,
        letterSpacing: 0,
        color: CustomizedColors.ebonyClay,
      ),
      headline6: GoogleFonts.rubik(
        fontSize: 20,
        fontWeight: FontWeight.w900,
        letterSpacing: 0.15,
        color: CustomizedColors.ebonyClay,
      ),
      subtitle1: GoogleFonts.rubik(
        fontSize: 16,
        fontWeight: FontWeight.w400,
        letterSpacing: 0.15,
        color: CustomizedColors.ebonyClay,
      ),
      subtitle2: GoogleFonts.rubik(
        fontSize: 14,
        fontWeight: FontWeight.w500,
        letterSpacing: 0.1,
        color: CustomizedColors.ebonyClay,
      ),
      bodyText1: GoogleFonts.rubik(
        fontSize: 16,
        fontWeight: FontWeight.w400,
        letterSpacing: 0.5,
        color: CustomizedColors.ebonyClay,
      ),
      bodyText2: GoogleFonts.rubik(
        fontSize: 14,
        fontWeight: FontWeight.w400,
        letterSpacing: 0.25,
        color: CustomizedColors.ebonyClay,
      ),
    ),
  );

  final darkTheme = ThemeData.dark().copyWith(
    visualDensity: VisualDensity.adaptivePlatformDensity,
    brightness: Brightness.dark,
    primaryColor: CustomizedColors.ebonyClay,
    backgroundColor: CustomizedColors.ebonyClay,
    accentColor: CustomizedColors.burntSienna,
    scaffoldBackgroundColor: CustomizedColors.ebonyClay,
    hintColor: CustomizedColors.mirage,
    shadowColor: CustomizedColors.black.withOpacity(0.5),
    dividerColor: CustomizedColors.alto.withOpacity(0.5),
    cardColor: CustomizedColors.white,
    disabledColor: CustomizedColors.white,
    textTheme: GoogleFonts.rubikTextTheme().copyWith(
      headline1: GoogleFonts.rubik(
        fontSize: 96,
        fontWeight: FontWeight.w300,
        letterSpacing: -1.5,
        color: CustomizedColors.white,
      ),
      headline2: GoogleFonts.rubik(
        fontSize: 60,
        fontWeight: FontWeight.w300,
        letterSpacing: -0.5,
        color: CustomizedColors.white,
      ),
      headline3: GoogleFonts.rubik(
        fontSize: 48,
        fontWeight: FontWeight.w400,
        letterSpacing: 0,
        color: CustomizedColors.white,
      ),
      headline4: GoogleFonts.rubik(
        fontSize: 34,
        fontWeight: FontWeight.w400,
        letterSpacing: 0.25,
        color: CustomizedColors.white,
      ),
      headline5: GoogleFonts.rubik(
        fontSize: 24,
        fontWeight: FontWeight.w700,
        letterSpacing: 0,
        color: CustomizedColors.white,
      ),
      headline6: GoogleFonts.rubik(
        fontSize: 20,
        fontWeight: FontWeight.w900,
        letterSpacing: 0.15,
        color: CustomizedColors.white,
      ),
      subtitle1: GoogleFonts.rubik(
        fontSize: 16,
        fontWeight: FontWeight.w400,
        letterSpacing: 0.15,
        color: CustomizedColors.white,
      ),
      subtitle2: GoogleFonts.rubik(
        fontSize: 14,
        fontWeight: FontWeight.w500,
        letterSpacing: 0.1,
        color: CustomizedColors.white,
      ),
      bodyText1: GoogleFonts.rubik(
        fontSize: 16,
        fontWeight: FontWeight.w400,
        letterSpacing: 0.5,
        color: CustomizedColors.white,
      ),
      bodyText2: GoogleFonts.rubik(
        fontSize: 14,
        fontWeight: FontWeight.w400,
        letterSpacing: 0.25,
        color: CustomizedColors.white,
      ),
    ),
  );
}
