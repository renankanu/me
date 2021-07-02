import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:graphql_flutter/graphql_flutter.dart';
import 'package:me/app/modules/not_found/not_found_view.dart';
import 'package:me/generated/locales.g.dart';
import 'package:url_strategy/url_strategy.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';

import 'package:get/get.dart';

import 'app/routes/app_pages.dart';
import 'app/theme/themes.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  setPathUrlStrategy();
  await dotenv.load(fileName: ".env");
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Iterable<Locale> supportedLocales = <Locale>[
      const Locale('pt', 'BR'),
      const Locale('en', 'US'),
    ];
    final String token = dotenv.env['GITHUB_TOKEN']!;
    final HttpLink httpLink = HttpLink('https://api.github.com/graphql');
    final AuthLink authLink = AuthLink(
      getToken: () async => 'Bearer $token',
    );

    final Link link = authLink.concat(httpLink);
    ValueNotifier<GraphQLClient> client = ValueNotifier(
      GraphQLClient(
        cache: GraphQLCache(store: InMemoryStore()),
        link: link,
      ),
    );
    return GraphQLProvider(
      client: client,
      child: GetMaterialApp(
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
        unknownRoute: GetPage(
          name: 'not-found',
          page: () => NotFoundView(),
          transition: Transition.leftToRightWithFade,
        ),
        getPages: AppPages.routes,
        theme: Themes().lightTheme,
        themeMode: ThemeMode.system,
        darkTheme: Themes().darkTheme,
      ),
    );
  }
}
