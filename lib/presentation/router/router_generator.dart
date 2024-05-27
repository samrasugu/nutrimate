import 'package:flutter/material.dart';
import 'package:nutrimate/presentation/chat/pages/chat_bot_page.dart';
import 'package:nutrimate/presentation/home/pages/home_page.dart';
import 'package:nutrimate/presentation/onboarding/complete_profile/pages/complete_profile_success_page.dart';
import 'package:nutrimate/presentation/onboarding/complete_profile/pages/search_diseases_page.dart';
import 'package:nutrimate/presentation/onboarding/complete_profile/pages/set_basic_info_page.dart';
import 'package:nutrimate/presentation/onboarding/complete_profile/pages/set_location_page.dart';
import 'package:nutrimate/presentation/onboarding/complete_profile/pages/set_meal_times_page.dart';
import 'package:nutrimate/presentation/onboarding/login/pages/login_page.dart';
import 'package:nutrimate/presentation/onboarding/onboarding_intro/pages/onboarding_intro_page.dart';
import 'package:nutrimate/presentation/onboarding/select_onboarding/pages/select_onboarding_page.dart';
import 'package:nutrimate/presentation/onboarding/signup/pages/sign_up_page.dart';
import 'package:nutrimate/presentation/onboarding/signup/pages/sign_up_success_page.dart';
import 'package:nutrimate/presentation/profile/pages/settings_page.dart';
import 'package:nutrimate/presentation/router/routes.dart';

class RouteGenerator {
  static Route<dynamic> generateRoute(RouteSettings settings) {
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
      case Routes.login:
        return MaterialPageRoute<LoginPage>(
          builder: (_) => const LoginPage(),
          settings: const RouteSettings(name: 'Login Page'),
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
      case Routes.setLocation:
        return MaterialPageRoute<SetLocationPage>(
          builder: (_) => const SetLocationPage(),
          settings: const RouteSettings(name: 'Set Location Page'),
        );
      case Routes.chat:
        return MaterialPageRoute<ChatBotPage>(
          builder: (_) => const ChatBotPage(),
          settings: const RouteSettings(name: 'ChatBot Page'),
        );
      case Routes.searchDiseases:
        return MaterialPageRoute<SearchDiseasesPage>(
          builder: (_) => const SearchDiseasesPage(),
          settings: const RouteSettings(name: 'Search Diseases Page'),
        );
      case Routes.settings:
        return MaterialPageRoute<SettingsPage>(
          builder: (_) => const SettingsPage(),
          settings: const RouteSettings(name: 'Settings Page'),
        );
      case Routes.signUpSuccess:
        return MaterialPageRoute<SignUpSuccessPage>(
          builder: (_) => const SignUpSuccessPage(),
          settings: const RouteSettings(name: 'Sign Up Success Page'),
        );
      case Routes.completeProfileSuccess:
        return MaterialPageRoute<CompleteProfileSuccessPage>(
          builder: (_) => const CompleteProfileSuccessPage(),
          settings: const RouteSettings(name: 'Complete Profile Success Page'),
        );
      default:
        return MaterialPageRoute<LoginPage>(
          builder: (_) => const LoginPage(),
          settings: const RouteSettings(name: 'Login Page'),
        );
    }
  }
}
