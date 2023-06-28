import 'package:calculator_app/core/constants/app_colors.dart';
import 'package:calculator_app/core/ui/shared/ui_helpers.dart';
import 'package:flutter/material.dart';

extension CustomTheme on ThemeData {
  // ignore: non_constant_identifier_names
  static ThemeData LightTheme() => ThemeData.light().copyWith(
        iconTheme: const IconThemeData(size: UIHelper.DefaultCardIconSize, color: LightColors.iconColor),
        visualDensity: VisualDensity.adaptivePlatformDensity,
        scaffoldBackgroundColor: LightColors.scaffoldBgColor,
      );

// ignore: non_constant_identifier_names
  static ThemeData DarkTheme() => ThemeData.dark().copyWith(
        iconTheme: const IconThemeData(size: UIHelper.DefaultCardIconSize, color: DarkColors.iconColor),
        visualDensity: VisualDensity.adaptivePlatformDensity,
        scaffoldBackgroundColor: DarkColors.scaffoldBgColor,
      );
}
