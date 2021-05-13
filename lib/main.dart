import 'package:skeleton/Providers/user/index.dart';
import 'package:skeleton/Providers/interaction/index.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:skeleton/Screens/index.dart';
import 'package:skeleton/Screens/shared/error/index.dart';
import 'package:skeleton/Screens/shared/loading/index.dart';
import 'package:skeleton/Utils/theme.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  final String initialRoute = "/";
  final Map<String, Widget Function(BuildContext)> routes = {
    '/': (ctx) => IndexScreen(),
    LoadingScreen.routeName: (ctx) => LoadingScreen(),
    ErrorScreen.routeName: (ctx) => ErrorScreen(),
  };
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider.value(
          value: InteractionProvider(),
        ),
        ChangeNotifierProvider.value(
          value: UserProvider(),
        ),
      ],
      child: MaterialApp(
        theme: ThemeData(
          brightness: Brightness.light,
          primaryColor: PlatformTheme.primaryColor,
          primaryColorLight: PlatformTheme.primaryColorLight,
          primaryColorDark: PlatformTheme.primaryColorDark,
          accentColor: PlatformTheme.accentColor,
          visualDensity: VisualDensity.adaptivePlatformDensity,
        ),
        initialRoute: initialRoute,
        routes: routes,
        onUnknownRoute: (settings) {
          return MaterialPageRoute(builder: (context) => ErrorScreen());
        },
      ),
    );
  }
}
