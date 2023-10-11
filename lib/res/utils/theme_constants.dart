import 'package:flutter/material.dart';

import '../colors/app_color.dart';

class ThemeConstants {
  // Font Family
  static const String defaultFontFamily = "Nunito";

  // Font Sizes
  static const double extraSmallFontSize = 14.0;
  static const double smallFontSize = 15.0;
  static const double mediumFontSize = 18.0;
  static const double largeFontSize = 25.0;
  static const double buttonFontSize = 16.0;

  // Spacing and Padding
  static const EdgeInsets defaultPadding =
      EdgeInsets.symmetric(horizontal: 10, vertical: 20);
  static const EdgeInsets smallPadding = EdgeInsets.symmetric(horizontal: 8);
  static const EdgeInsets mediumPadding = EdgeInsets.symmetric(horizontal: 20);
  static const EdgeInsets largePadding =
      EdgeInsets.symmetric(horizontal: 10, vertical: 20);
  static const EdgeInsets defaultmargin = EdgeInsets.fromLTRB(20, 40, 20, 0);

  // Border Radius
  static BorderRadius defaultBorderRadius = BorderRadius.circular(20);
  static BorderRadius smallBorderRadius = BorderRadius.circular(5);
  static BorderRadius mediumBorderRadius = BorderRadius.circular(20);
  static BorderRadius largeBorderRadius = BorderRadius.circular(28);

  // Box Shadows
  static const BoxShadow boxShadow = BoxShadow(
    color: AppColor.boxShadow,
    blurRadius: 4.0,
    spreadRadius: 2.0,
    offset: Offset(0, 2),
  );

  // Text Styles
  static const TextStyle headingStyle = TextStyle(
      fontSize: largeFontSize,
      fontWeight: FontWeight.bold,
      fontFamily: defaultFontFamily);

  static const TextStyle subheadingStyle = TextStyle(
      fontSize: mediumFontSize,
      fontWeight: FontWeight.w700,
      fontFamily: defaultFontFamily);

  static const TextStyle bodyStyle = TextStyle(
      fontSize: smallFontSize,
      fontWeight: FontWeight.w400,
      fontFamily: defaultFontFamily);

  static const TextStyle captionStyle = TextStyle(
      fontSize: extraSmallFontSize,
      fontWeight: FontWeight.w400,
      fontFamily: defaultFontFamily);

  static const TextStyle buttonStyle = TextStyle(
      fontSize: buttonFontSize,
      fontWeight: FontWeight.w700,
      fontFamily: defaultFontFamily);

  // Light Theme
  // Text Themes
  TextTheme textTheme = TextTheme(
    // all large headings
    titleLarge: headingStyle.apply(color: AppColor.text1Light),
    // image caption
    titleMedium: subheadingStyle.apply(color: AppColor.text2Light),
    // image caption & other white color titles
    labelLarge: headingStyle.apply(color: AppColor.text2Light),
    // container's title
    labelMedium: headingStyle.apply(color: AppColor.text3Light),
    // appbar title,
    labelSmall: subheadingStyle.apply(color: AppColor.text3Light),
    // body texts
    bodyLarge: bodyStyle.apply(color: AppColor.text3Light),
    // body texts
    bodyMedium: bodyStyle.copyWith(color: AppColor.text3Light),
    // hint text style
    bodySmall: captionStyle.apply(color: AppColor.text3Light),
    // circular indicator
    displayLarge: bodyStyle.copyWith(
        color: AppColor.text3Dark, fontWeight: FontWeight.w900),
    // textSpan style
    displayMedium: bodyStyle.apply(
        color: AppColor.text4Light, decoration: TextDecoration.underline),
  );

  // Button Styles
  ElevatedButtonThemeData elevatedStyle1 = ElevatedButtonThemeData(
      style: ButtonStyle(
    backgroundColor: const MaterialStatePropertyAll(AppColor.buttonBg1Light),
    overlayColor: const MaterialStatePropertyAll(AppColor.buttonOverLayLight),
    foregroundColor: const MaterialStatePropertyAll(AppColor.buttonFg1Light),
    shape: MaterialStatePropertyAll(
        RoundedRectangleBorder(borderRadius: defaultBorderRadius)),
    elevation: const MaterialStatePropertyAll(5),
    textStyle: const MaterialStatePropertyAll(buttonStyle),
  ));

  ButtonStyle elevatedStyle2 = ButtonStyle(
    backgroundColor: const MaterialStatePropertyAll(AppColor.buttonBg2Light),
    foregroundColor: const MaterialStatePropertyAll(AppColor.buttonFg2Light),
    overlayColor: const MaterialStatePropertyAll(AppColor.buttonOverLayLight),
    shape: MaterialStatePropertyAll(RoundedRectangleBorder(
        borderRadius: defaultBorderRadius,
        side: const BorderSide(color: AppColor.border1))),
    elevation: const MaterialStatePropertyAll(5),
    textStyle: const MaterialStatePropertyAll(buttonStyle),
  );

  TextButtonThemeData textButtonStyle1 = const TextButtonThemeData(
      style: ButtonStyle(
          foregroundColor: MaterialStatePropertyAll(AppColor.buttonFg3Light),
          textStyle: MaterialStatePropertyAll(buttonStyle)));

  ButtonStyle textButtonStyle2 = const ButtonStyle(
      foregroundColor: MaterialStatePropertyAll(AppColor.buttonFg4Light),
      textStyle: MaterialStatePropertyAll(buttonStyle));

  BottomSheetThemeData bottomSheetStyle = BottomSheetThemeData(
    backgroundColor: AppColor.bg2Light,
    elevation: 5,
    shape: RoundedRectangleBorder(borderRadius: defaultBorderRadius),
  );

  IconThemeData iconStyle = const IconThemeData(
    color: AppColor.iconLight,
    size: 30,
  );

  // Dark Theme
  // Text Themes
  TextTheme textThemeDark = TextTheme(
    // all large headings
    titleLarge: headingStyle.apply(color: AppColor.text1Dark),
    // image caption
    titleMedium: subheadingStyle.apply(color: AppColor.text1Dark),
    // image caption & other white color titles
    labelLarge: headingStyle.apply(color: AppColor.text1Dark),
    // container's title
    labelMedium: headingStyle.apply(color: AppColor.text2Dark),
    // appbar title
    labelSmall: subheadingStyle.apply(color: AppColor.text1Dark),
    // body texts
    bodyLarge: bodyStyle.apply(color: AppColor.text2Dark),
    // body text in white color
    bodyMedium: bodyStyle.copyWith(color: AppColor.text1Dark),
    // hint text style
    bodySmall: captionStyle.apply(color: AppColor.text3Dark),
    // circular indicator
    displayLarge: bodyStyle.copyWith(
        color: AppColor.text3Dark, fontWeight: FontWeight.w900),
    // textSpan style, // hint text style
    displayMedium: bodyStyle.apply(
        color: AppColor.text3Dark, decoration: TextDecoration.underline),
  );

  // Button Styles
  ElevatedButtonThemeData elevatedStyle1Dark = ElevatedButtonThemeData(
      style: ButtonStyle(
    backgroundColor: const MaterialStatePropertyAll(AppColor.buttonBg1Dark),
    overlayColor: const MaterialStatePropertyAll(AppColor.buttonOverLayDark),
    foregroundColor: const MaterialStatePropertyAll(AppColor.buttonFg1Dark),
    shape: MaterialStatePropertyAll(
        RoundedRectangleBorder(borderRadius: defaultBorderRadius)),
    elevation: const MaterialStatePropertyAll(5),
    textStyle: const MaterialStatePropertyAll(buttonStyle),
  ));

  ButtonStyle elevatedStyle2Dark = ButtonStyle(
    backgroundColor: const MaterialStatePropertyAll(AppColor.buttonBg2Dark),
    foregroundColor: const MaterialStatePropertyAll(AppColor.buttonFg2Dark),
    overlayColor: const MaterialStatePropertyAll(AppColor.buttonOverLayDark),
    shape: MaterialStatePropertyAll(RoundedRectangleBorder(
        borderRadius: defaultBorderRadius,
        side: const BorderSide(color: AppColor.border1))),
    elevation: const MaterialStatePropertyAll(5),
    textStyle: const MaterialStatePropertyAll(buttonStyle),
  );

  TextButtonThemeData textButtonStyle1Dark = const TextButtonThemeData(
      style: ButtonStyle(
          foregroundColor: MaterialStatePropertyAll(AppColor.buttonFg3Dark),
          textStyle: MaterialStatePropertyAll(buttonStyle)));

  ButtonStyle textButtonStyle2Dark = const ButtonStyle(
      foregroundColor: MaterialStatePropertyAll(AppColor.buttonFg4Dark),
      textStyle: MaterialStatePropertyAll(buttonStyle));

  BottomSheetThemeData bottomSheetStyleDark = BottomSheetThemeData(
    backgroundColor: AppColor.bg3Dark,
    elevation: 5,
    shape: RoundedRectangleBorder(borderRadius: defaultBorderRadius),
  );

  IconThemeData iconStyleDark = const IconThemeData(
    color: AppColor.iconDark,
    size: 30,
  );
}
