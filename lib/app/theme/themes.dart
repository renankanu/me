import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:me/app/core/colors.dart';

class Themes {
  final lightTheme = ThemeData.light().copyWith(
    visualDensity: VisualDensity.adaptivePlatformDensity,
    brightness: Brightness.light,
    primaryColor: Colors.white,
    accentColor: CustomizedColors.burntSienna,
    textTheme: GoogleFonts.poppinsTextTheme().copyWith(
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
    textTheme: GoogleFonts.poppinsTextTheme(),
    disabledColor: CustomizedColors.white,
  );
}
