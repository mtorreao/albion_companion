import 'package:flutter/material.dart';
import 'package:albion_companion/app/pages/home/home_module.dart';
import 'package:albion_companion/app/pages/login/login_module.dart';

class AppRoutes {
  Map<String, WidgetBuilder> routeMain() {
    return {
      '/': (context) => LoginModule(),
      '/home': (context) => HomeModule()
    };
  }
}
