import 'package:flutter/material.dart';

class AppColor {
  static const Color blackColor = Color(0xff000000);

  // Light Theme Colors

  // Text Colors
  // all large heading colors
  static const Color text1Light = Color(0xFF0AA59D);
  // image caption & other white color titles
  static const Color text2Light = Color(0xFFFFFFFF);
  // container's title, appbar title, body texts, hint text style
  static const Color text3Light = Color(0xFF000000);
  // text span color
  static const Color text4Light = Color(0xFF0072FF);

  // Background Colors
  // login options image filter color
  static const Color bg1Light = Color(0xFF000000);
  // scaffold background, inputBox background
  static const Color bg2Light = Color(0xFFF0F2F5);
  // bottomsheet background, container's background
  static const Color bg3Light = Color(0xFFDCE2F2);
  // inputBox background
  static const Color bg4Light = Color(0xFFF8F2F2);
  // security pages background
  static const Color bg5Light = Color(0xFF0AA59D);
  // circular chart fill background internal security
  static const Color bg6Light = Color(0xFF75C8C6);
  // circular chart fill background wifi security
  static const Color bg7Light = Color(0xFF7C75C8);

  // Button Colors
  // elevated button color for elevated style1
  static const Color buttonBg1Light = Color(0xFF193BAE);
  static const Color buttonFg1Light = Color(0xFFFFFFFF);
  // elevated button color for elevated style2
  static const Color buttonBg2Light = Color(0xFFFFFFFF);
  static const Color buttonFg2Light = Color(0xFF000000);
  // textButtonColor for textStyle1
  static const Color buttonFg3Light = Color(0xFF000000);
  // textButtonColor for textStyle2
  static const Color buttonFg4Light = Color(0xFF2F81E6);
  // all buttons overlay colors
  static const Color buttonOverLayLight = Colors.grey;

  // Icon Colors
  static const Color iconLight = Color(0xFF0AA59D);

  // Dark Theme Colors

  // Text Colors
  // all large heading colors image caption & appbar titles, other white color titles and some body text
  static const Color text1Dark = Color(0xFFFFFFFF);
  // container's title, body texts
  static const Color text2Dark = Color(0xFF000000);
  // text span, hint text, , circular indicator
  static const Color text3Dark = Color(0xFF00BFFF);

  // Background Colors
  // login options image filter color
  static const Color bg1Dark = Color(0xFF000000);
  // scaffold background, inputBox background
  static const Color bg2Dark = Color(0xFF212121);
  // bottomsheet background, container's background
  static const Color bg3Dark = Color(0xFFDCE2F2);
  // inputBox background
  static const Color bg4Dark = Color(0xFFF8F2F2);
  // security pages background
  static const Color bg5Dark = Color(0xFF02746E);
  // circular chart fill background internal security
  static const Color bg6Dark = Color(0xFF75C8C6);
  // circular chart fill background wifi security
  static const Color bg7Dark = Color(0xFF7C75C8);

  // Button Colors
  // elevated button color for elevated style1
  static const Color buttonBg1Dark = Color(0xFF757575);
  static const Color buttonFg1Dark = Color(0xFFFFFFFF);
  // elevated button color for elevated style2
  static const Color buttonBg2Dark = Color(0xFFDCDDE0);
  static const Color buttonFg2Dark = Color(0xFF000000);
  // textButtonColor for textStyle1
  static const Color buttonFg3Dark = Color(0xFFFFFFFF);
  // textButtonColor for textStyle2
  static const Color buttonFg4Dark = Color(0xFF00BFFF);
  // all buttons overlay colors
  static const Color buttonOverLayDark = Colors.black38;

  // Icon Colors
  static const Color iconDark = Color(0xFF0AA59D);

  // Box shadow colors
  static const Color boxShadow = Color(0xFF000000);

  // Border Colors
  // all border colors
  static const Color border1 = Color(0xFF000000);
  // all border colors
  static const Color border2 = Color(0xFF0AA59D);
  // circular border color internet security
  static const Color border3 = Color(0xFF68B7B5);
  // circular border color wifi security
  static const Color border4 = Color(0xFF615BA4);

  // Cursor Color
  static const Color cursor = Color(0xFF0AA59D);

  // Divider Color
  static const Color divider = Color(0xFF000000);

  // Progress Indicator Colors
  static const Color circularIndicator = Color(0xFF0AA59D);

  // Error Colors
  static const Color errorColor = Color(0xFFB00020); // Red

  // Function to get the color from a color tag (e.g., [BLUE], [BLACK], etc.)
  static Color? _getColorFromTag(String tag) {
    switch (tag.toUpperCase()) {
      case 'BLUE':
        return text3Light;
      case 'BLACK':
        return text3Light;
      // Add more colors here as needed
      default:
        return null; // Return null for unknown color tags
    }
  }
}
