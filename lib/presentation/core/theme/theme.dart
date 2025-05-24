import 'package:flutter/material.dart';

class AppTheme {
  static ThemeData getTheme() {
    return ThemeData(
      fontFamily: 'Urbanist',
      useMaterial3: true,
      primaryColor: AppColors.themeColors.primaryColor,
      primaryColorDark: AppColors.themeColors.primaryDarkColor,
      colorScheme: ColorScheme.light(
        primary: AppColors.themeColors.primaryColor,
        secondary: AppColors.themeColors.accentColor,
        onSecondary: AppColors.themeColors.primaryDarkColor,
      ).copyWith(surface: AppColors.themeColors.backgroundColor),
    ).copyWith(
      pageTransitionsTheme: const PageTransitionsTheme(
        builders: <TargetPlatform, PageTransitionsBuilder>{
          TargetPlatform.android: CupertinoPageTransitionsBuilder(),
          TargetPlatform.iOS: CupertinoPageTransitionsBuilder(),
        },
      ),
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ButtonStyle(
          backgroundColor: WidgetStateProperty.all<Color>(
            AppColors.themeColors.primaryColor,
          ),
          shape: WidgetStateProperty.all<RoundedRectangleBorder>(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
            ),
          ),
        ),
      ),
    );
  }
}

class AppColors {
  static const Color primaryColor = Color(0xFF00B96D);
  static const Color darkGreenColor = Color(0xFF134631);
  static const Color primaryColorLite = Color(0xFFCBEAD2);
  static const Color primaryColorThin = Color(0xFFEEF8F1);
  static const Color darkGreyColor = Color(0xFF3C3C3C);
  static const Color greyTextColor = Color(0xFF828282);
  static const Color lightGreyColor = Color(0xFFC1C1C1);
  static const Color backgroundColor = Color(0xFFF9F9F9);
  static const Color whiteColor = Color(0xFFFFFFFF);
  static const Color blackColor = Color(0xFF000000);
  static const Color redColor = Color(0xFFEB5757);
  static const Color yellowColor = Color(0xFFFFECA6);
  static const Color yellowWarningColor = Color(0xFFF2C94C);

  static ThemeColors themeColors = ThemeColors(
    primaryColor: primaryColor,
    primaryDarkColor: darkGreenColor,
    accentColor: primaryColorLite,
    backgroundColor: backgroundColor,
  );
}

class ThemeColors {
  final Color primaryColor;
  final Color primaryDarkColor;
  final Color accentColor;
  final Color backgroundColor;

  ThemeColors({
    required this.primaryColor,
    required this.primaryDarkColor,
    required this.accentColor,
    required this.backgroundColor,
  });
}
