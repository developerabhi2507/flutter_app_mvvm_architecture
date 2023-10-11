import 'package:flutter/material.dart';

import '../colors/app_color.dart';
import 'theme_constants.dart';

enum AppTheme {
  Light,
  Dark,
}

class ThemeService {
  // Singleton pattern
  static final ThemeService _instance = ThemeService._internal();
  factory ThemeService() => _instance;
  ThemeService._internal();

  // Current theme
  AppTheme _currentTheme = AppTheme.Light;
  AppTheme get currentTheme => _currentTheme;

  // Light theme colors
  final lightTheme = ThemeData.light().copyWith(
    scaffoldBackgroundColor: AppColor.bg2Light,
    hintColor: AppColor.text3Light,
    elevatedButtonTheme: ThemeConstants().elevatedStyle1,
    textButtonTheme: ThemeConstants().textButtonStyle1,
    textTheme: ThemeConstants().textTheme,
    bottomSheetTheme: ThemeConstants().bottomSheetStyle,
    iconTheme: ThemeConstants().iconStyle,

    // colorScheme: const ColorScheme.light(
    //     primary: AppColor.primaryColorDark,
    //     secondary: AppColor.accentColorDark,
    //     background: Colors.green,
    //     brightness: Brightness.light,
    //     surface: Colors.green
    //     // Add other light theme colors here
    //     ),
    // Add other light theme configurations here
  );

  // Dark theme colors
  final darkTheme = ThemeData.dark().copyWith(
    scaffoldBackgroundColor: AppColor.bg2Dark,
    hintColor: AppColor.text3Dark,
    elevatedButtonTheme: ThemeConstants().elevatedStyle1Dark,
    textButtonTheme: ThemeConstants().textButtonStyle1Dark,
    textTheme: ThemeConstants().textThemeDark,
    bottomSheetTheme: ThemeConstants().bottomSheetStyleDark,
    iconTheme: ThemeConstants().iconStyleDark,
    colorScheme: const ColorScheme.dark(
      primary: Colors.teal,
      secondary: Colors.orange,
      // Add other dark theme colors here
    ),
    // Add other dark theme configurations here
  );

  // Function to get the current theme data
  ThemeData getThemeData() {
    switch (_currentTheme) {
      case AppTheme.Light:
        return lightTheme;
      case AppTheme.Dark:
        return darkTheme;
    }
  }

  // Function to toggle between light and dark themes
  void toggleTheme() {
    _currentTheme =
        (_currentTheme == AppTheme.Light) ? AppTheme.Dark : AppTheme.Light;
  }
}
