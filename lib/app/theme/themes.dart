import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:me/app/core/colors.dart';

class Themes {
  final lightTheme = ThemeData.light().copyWith(
    brightness: Brightness.light,
    primaryColor: Colors.green,
  );

  final darkTheme = ThemeData.dark().copyWith(
    brightness: Brightness.dark,
    primaryColor: CustomizedColors.ebonyClay,
    backgroundColor: CustomizedColors.ebonyClay,
    accentColor: CustomizedColors.burntSienna,
    scaffoldBackgroundColor: CustomizedColors.ebonyClay,
    shadowColor: CustomizedColors.black.withOpacity(0.5),
    textTheme: GoogleFonts.poppinsTextTheme().copyWith(
      bodyText2: TextStyle(color: CustomizedColors.white),
    ),
  );
}
