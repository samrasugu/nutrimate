import 'package:flutter/material.dart';
import 'package:nutrimate/presentation/core/theme/theme.dart';
import 'package:nutrimate/presentation/onboarding/complete_profile/pages/set_basic_info_page.dart';
import 'package:nutrimate/presentation/router/router_generator.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'NutriMate',
      debugShowCheckedModeBanner: false,
      theme: AppTheme.getTheme(),
      onGenerateRoute: RouteGenerator.generateRoute,
      home: const SetBasicInfoPage(),
    );
  }
}
