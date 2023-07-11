import 'package:flutter/material.dart';
import 'package:upgradex_task/views/home/home_view.dart';

import '../views/login/login_view.dart';

class ProjectRouter {
  ProjectRouter._();
  static final ProjectRouter _instance = ProjectRouter._();
  factory ProjectRouter() => _instance;

//REVIEW - here you can find routes names
  static const String login = '/login';
  static const String home = '/home';

  //REVIEW - here you can find routes and redirect to them
  MaterialPageRoute? onRouting(settings) {
    switch (settings.name) {
      case login:
        return MaterialPageRoute(builder: (_) => const LoginView());
      case home:
        return MaterialPageRoute(builder: (_) => const HomeView());
      default:
        return null;
    }
  }
}
