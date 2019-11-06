import 'package:flutter/material.dart';
import 'package:albion_companion/app/routes.dart';
import 'package:albion_companion/app/pages/home/home_module.dart';
import 'package:albion_companion/app/pages/login/login_module.dart';
import 'package:albion_companion/app/shared/styles/theme_style.dart';
import 'package:albion_companion/app/shared/locale/locales.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

class AppWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Slidy',
      theme: AppTheme().themeData(),
      routes: AppRoutes().routeMain(),
      initialRoute: '/',
      debugShowCheckedModeBanner: false,
      localizationsDelegates: [
        const AppLocaleDelegate(),
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
      ],
      supportedLocales: [
        const Locale('pt'),
        // const Locale('en'),
      ],
    );
  }
}
