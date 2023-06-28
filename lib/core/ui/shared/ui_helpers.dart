// ignore_for_file: constant_identifier_names

import 'package:flutter/material.dart';

mixin UIHelper {
  static const double DefaultCardIconSize = 30.0;

  static const double LittleGap = 6.0;
  static const double MediumGap = 12.0;
  static const double largeGap = 20.0;

  static const double LittleFontSize = 12.0;
  static const double MediumFontSize = 15.0;
  static const double LargeFontSize = 18.0;
  static const double XLargeFontSize = 22.0;
  static const double XXLargeFontSize = 26.0;

  static var brightness = WidgetsBinding.instance.platformDispatcher.platformBrightness; // Get Device brightness
  static bool isDark = brightness == Brightness.dark;
}
