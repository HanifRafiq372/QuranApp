import 'package:flutter/material.dart';
import 'package:quoran/screen/home_page.dart';
import 'package:quoran/screen/login.dart';
import 'package:quoran/screen/register.dart';
import 'package:quoran/utils/not_found_screen.dart';

MaterialPageRoute _pageRoute({required Widget body, required RouteSettings settings}) =>
    MaterialPageRoute(builder: (_) => body, settings: settings);

Route<dynamic>? generateDynamicRoute(RouteSettings settings) {
  Route<dynamic>? route;

  switch (settings.name) {
    case rLogin:
      route = _pageRoute(body: const LoginPage(), settings: settings); // Sesuaikan dengan LoginPage
      break;
    case rRegister:
      route = _pageRoute(body: const RegisterPage(), settings: settings); // Sesuaikan dengan RegisterPage
      break;
    case rHome:
      route = _pageRoute(body: const HomePage(), settings: settings); // Sesuaikan dengan HomePage
      break;
    default:
      route = _pageRoute(body: const NotFoundScreen(), settings: settings);
  }

  return route;
}

final GlobalKey<NavigatorState> navKey = GlobalKey<NavigatorState>();

const String rLogin = '/login';
const String rRegister = '/register';
const String rHome = '/home';
