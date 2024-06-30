import 'package:flutter/material.dart';

import '../../presentation/home/home_page.dart';
import '../../presentation/login/login_page.dart';
import '../../presentation/native/native_page.dart';
import '../../presentation/sign_up/sign_up_page.dart';

class AppRoute {
  static const String login = "/login";
  static const String signUp = "/signUp";
  static const String userDetail = "/userDetail";
  static const String home = "/home";
  static const String native = "/native";

  static Route<dynamic> getAppPage(RouteSettings settings) {
    switch (settings.name) {
      case login:
        return MaterialPageRoute(
          builder: (BuildContext context) => const LoginPage(),
          settings: settings,
        );
      case signUp:
        return MaterialPageRoute(
          builder: (BuildContext context) => const SignUpPage(),
          settings: settings,
        );
      case home:
        return MaterialPageRoute(
          builder: (BuildContext context) => const HomePage(),
          settings: settings,
        );
      case native:
        return MaterialPageRoute(
          builder: (BuildContext context) => const NativePage(),
          settings: settings,
        );
      default:
        return MaterialPageRoute(
          builder: (BuildContext context) => const LoginPage(),
          settings: settings,
        );
    }
  }
}
