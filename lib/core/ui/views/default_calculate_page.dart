import 'package:calculator_app/core/constants/app_colors.dart';
import 'package:calculator_app/core/ui/shared/ui_helpers.dart';
import 'package:calculator_app/core/ui/widgets/keyboard_layouts/default_calculte_numeric.dart';
import 'package:flutter/material.dart';

class DefaultCalculatePage extends StatefulWidget {
  const DefaultCalculatePage({super.key});

  @override
  State<DefaultCalculatePage> createState() => _DefaultCalculatePageState();
}

class _DefaultCalculatePageState extends State<DefaultCalculatePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: UIHelper.isDark ? DarkColors.scaffoldBgColor : LightColors.scaffoldBgColor,
      body: Column(children: [
        Container(
          color: Colors.green,
        ),
        const DefaultNumericLayout()
      ]),
    );
  }
}
