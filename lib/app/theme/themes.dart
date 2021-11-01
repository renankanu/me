import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:me/app/core/colors.dart';

class Themes {
  Themes._();
  static final lightTheme = ThemeData.light().copyWith(
    visualDensity: VisualDensity.adaptivePlatformDensity,
    brightness: Brightness.light,
    primaryColor: CustomizedColors.white,
    colorScheme: ColorScheme.fromSwatch().copyWith(
      secondary: CustomizedColors.burntSienna,
    ),
    appBarTheme: AppBarTheme(
      color: CustomizedColors.white,
      iconTheme: IconThemeData(
        color: CustomizedColors.ebonyClay,
      ),
    ),
    scaffoldBackgroundColor: CustomizedColors.white,
    hintColor: CustomizedColors.alto,
    shadowColor: CustomizedColors.black.withOpacity(0.5),
    dividerColor: CustomizedColors.black.withOpacity(0.5),
    cardColor: CustomizedColors.ebonyClay,
    disabledColor: CustomizedColors.ebonyClay,
    iconTheme: IconThemeData(color: CustomizedColors.ebonyClay),
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

  static final darkTheme = ThemeData.dark().copyWith(
    visualDensity: VisualDensity.adaptivePlatformDensity,
    brightness: Brightness.dark,
    primaryColor: CustomizedColors.ebonyClay,
    colorScheme: ColorScheme.fromSwatch().copyWith(
      secondary: CustomizedColors.burntSienna,
    ),
    appBarTheme: AppBarTheme(
      color: CustomizedColors.ebonyClay,
      iconTheme: IconThemeData(
        color: CustomizedColors.white,
      ),
    ),
    scaffoldBackgroundColor: CustomizedColors.ebonyClay,
    hintColor: CustomizedColors.mirage,
    shadowColor: CustomizedColors.black.withOpacity(0.5),
    dividerColor: CustomizedColors.alto.withOpacity(0.5),
    cardColor: CustomizedColors.white,
    disabledColor: CustomizedColors.white,
    iconTheme: IconThemeData(color: CustomizedColors.white),
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
