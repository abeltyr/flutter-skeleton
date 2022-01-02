import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:krar/localization/l10n.dart';
import 'package:krar/services/language.dart';
import 'package:krar/views/home/index.dart';
import 'package:krar/views/shared/error/index.dart';
import 'package:provider/provider.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

import 'shared/loading/index.dart';

/// The Widget that configures your application.
///
class MyApp extends StatelessWidget {
  const MyApp({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    const String initialRoute = "/";
    final Map<String, Widget Function(BuildContext)> routes = {
      '/': (ctx) => const HomeScreen(),
      LoadingScreen.routeName: (ctx) => const LoadingScreen(),
      ErrorScreen.routeName: (ctx) => const ErrorScreen(),
    };
    return MultiProvider(
        providers: [
          ChangeNotifierProvider.value(
            value: LanguageService(),
          ),
        ],
        child: ValueListenableBuilder(
            valueListenable: Hive.box('language').listenable(),
            builder: (context, box, widget) {
              var boxData = box as Box;
              String? lang = boxData.get("current");
              var appLocal = const Locale('em');
              if (lang != null) appLocal = Locale(lang);
              print(lang);
              print(appLocal);
              return MaterialApp(
                restorationScopeId: 'app',
                localizationsDelegates: const [
                  AppLocalizations.delegate,
                  GlobalMaterialLocalizations.delegate,
                  GlobalWidgetsLocalizations.delegate,
                  GlobalCupertinoLocalizations.delegate,
                ],
                locale: appLocal,
                supportedLocales: L10n.all,
                initialRoute: initialRoute,
                routes: routes,
                onUnknownRoute: (settings) {
                  return MaterialPageRoute(
                      builder: (context) => const ErrorScreen());
                },
              );
            }));
  }
}
