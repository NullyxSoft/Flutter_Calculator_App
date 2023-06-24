import 'package:flutter/material.dart';

extension CustomTheme on ThemeData {
  // ignore: non_constant_identifier_names
  static ThemeData LightTheme() => ThemeData.light().copyWith(iconTheme: const IconThemeData(size: 30));

// ignore: non_constant_identifier_names
  static ThemeData DarkTheme() => ThemeData.dark().copyWith(iconTheme: const IconThemeData(size: 30));
}
