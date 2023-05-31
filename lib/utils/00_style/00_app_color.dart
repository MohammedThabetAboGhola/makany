import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

part '01_app_style.dart';

class AppColor {
  AppColor._();

  /// TODO: Background
  // static const Color background = Colors.white;
  // static const Color blackColor = Colors.black;
  // static const Color lightBlueColor = Color(0xff25b5ca);
  // static const Color mainIconsColor = Color(0xffA2B6B9);

  ///==========================================================

  static const Color primary = Color(0xff1C7CA7);
  static const Color primaryContainer = Color(0xff0052CC);
  static const Color secondary = Color(0xff1C7CA7);
  static const Color secondaryContainer = Color(0xffac6e00);
  static const Color surface = Colors.white;
  static const Color background = Colors.white;
  static const Color error = Colors.red;
  static const Color onPrimary = Colors.white;
  static const Color onSecondary = Colors.black;
  static const Color onSurface = Colors.black;
  static const Color onBackground = Colors.black;
  static const Color onError = Colors.white;
  static const Color blueGrayColor = Color(0xfff9fafb);
  static const Color grayColor = Color(0xffd1d1d1);
  static const Color lightBlue = Color(0xffD9E7FF);

  static const ColorScheme colorScheme = ColorScheme(
    primary: primary,
    secondary: secondary,
    surface: surface,
    background: background,
    error: error,
    onPrimary: onPrimary,
    onSecondary: onSecondary,
    onSurface: onSurface,
    onBackground: onBackground,
    onError: onError,
    brightness: Brightness.light,
  );
}
