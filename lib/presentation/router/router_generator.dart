import 'package:flutter/material.dart';
import 'package:nutrimate/presentation/home/pages/home_page.dart';
import 'package:nutrimate/presentation/onboarding/login/pages/login_page.dart';
import 'package:nutrimate/presentation/onboarding/signup/pages/sign_up_page.dart';
import 'package:nutrimate/presentation/router/routes.dart';

class RouteGenerator {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    // final dynamic args = settings.arguments;

    switch (settings.name) {
      case Routes.home:
        return MaterialPageRoute<HomePage>(
          builder: (_) => const HomePage(),
          settings: const RouteSettings(name: 'Home Page'),
        );
      case Routes.signup:
        return MaterialPageRoute<SignUpPage>(
          builder: (_) => const SignUpPage(),
          settings: const RouteSettings(name: 'SignUp Page'),
        );
      default:
        return MaterialPageRoute<LoginPage>(
          builder: (_) => const LoginPage(),
          settings: const RouteSettings(name: 'Login Page'),
        );
    }
  }
}
