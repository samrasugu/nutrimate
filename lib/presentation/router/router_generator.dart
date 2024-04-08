import 'package:flutter/material.dart';
import 'package:nutrimate/presentation/home/pages/home_page.dart';
import 'package:nutrimate/presentation/onboarding/complete_profile/pages/set_basic_info_page.dart';
import 'package:nutrimate/presentation/onboarding/complete_profile/pages/set_location_and_preferences_page.dart';
import 'package:nutrimate/presentation/onboarding/complete_profile/pages/set_meal_times_page.dart';
import 'package:nutrimate/presentation/onboarding/login/pages/login_page.dart';
import 'package:nutrimate/presentation/onboarding/onboarding_intro/pages/onboarding_intro_page.dart';
import 'package:nutrimate/presentation/onboarding/select_onboarding/pages/select_onboarding_page.dart';
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
      case Routes.selectOnboarding:
        return MaterialPageRoute<SelectOnboardingPage>(
          builder: (_) => const SelectOnboardingPage(),
          settings: const RouteSettings(name: 'Select Onboarding Page'),
        );
      case Routes.onboardingIntro:
        return MaterialPageRoute<OnboardingIntroPage>(
          builder: (_) => const OnboardingIntroPage(),
          settings: const RouteSettings(name: 'Onboarding Intro Page'),
        );
      case Routes.setBasicInfo:
        return MaterialPageRoute<SetBasicInfoPage>(
          builder: (_) => const SetBasicInfoPage(),
          settings: const RouteSettings(name: 'Set Basic Info Page'),
        );
      case Routes.setMealTimes:
        return MaterialPageRoute<SetMealTimesPage>(
          builder: (_) => const SetMealTimesPage(),
          settings: const RouteSettings(name: 'Set Preferences Page'),
        );
      case Routes.setLocationAndPreferences:
        return MaterialPageRoute<SetLocationAndPreferencesPage>(
          builder: (_) => const SetLocationAndPreferencesPage(),
          settings: const RouteSettings(name: 'Set Location And Preferences Page'),
        );
      default:
        return MaterialPageRoute<LoginPage>(
          builder: (_) => const LoginPage(),
          settings: const RouteSettings(name: 'Login Page'),
        );
    }
  }
}
