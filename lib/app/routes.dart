import 'package:albion_companion/app/pages/home/home_module.dart';
import 'package:flutter/material.dart';

class AppRoutes {
  Map<String, WidgetBuilder> routeMain() {
    return {
      '/': (context) => HomeModule(),
    };
  }
}
