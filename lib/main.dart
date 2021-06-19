import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:me/generated/locales.g.dart';
import 'package:url_strategy/url_strategy.dart';

import 'package:get/get.dart';

import 'app/routes/app_pages.dart';
import 'app/theme/themes.dart';

void main() {
  setPathUrlStrategy();
  final Iterable<Locale> supportedLocales = <Locale>[
    const Locale('pt', 'BR'),
    const Locale('en', 'US'),
  ];
  runApp(
    GetMaterialApp(
      title: "RenanKanu;",
      translationsKeys: AppTranslation.translations,
      locale: Locale('pt', 'BR'),
      supportedLocales: supportedLocales,
      localizationsDelegates: const <LocalizationsDelegate<dynamic>>[
        GlobalMaterialLocalizations.delegate
      ],
      localeResolutionCallback:
          (Locale? locale, Iterable<Locale> supportedLocales) {
        for (final Locale supportedLocale in supportedLocales) {
          if (supportedLocale.languageCode == locale!.languageCode &&
              supportedLocale.countryCode == locale.countryCode) {
            return supportedLocale;
          }
        }
        return supportedLocales.first;
      },
      initialRoute: AppPages.INITIAL,
      getPages: AppPages.routes,
      theme: Themes().lightTheme,
      themeMode: ThemeMode.system,
      darkTheme: Themes().darkTheme,
    ),
  );
}
