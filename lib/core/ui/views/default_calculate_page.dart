import 'package:calculator_app/core/constants/app_colors.dart';
import 'package:calculator_app/core/models/default_calculate_controller.dart';
import 'package:calculator_app/core/ui/shared/ui_helpers.dart';
import 'package:calculator_app/core/ui/views/calculate_output.dart';
import 'package:calculator_app/core/ui/views/keyboard_layouts/default_calculte_numeric.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class DefaultCalculatePage extends StatefulWidget {
  const DefaultCalculatePage({super.key});

  @override
  State<DefaultCalculatePage> createState() => _DefaultCalculatePageState();
}

class _DefaultCalculatePageState extends State<DefaultCalculatePage> {
  @override
  Widget build(BuildContext context) {
    return GetBuilder<CalculateController>(builder: (controller) {
      return Scaffold(
        backgroundColor: UIHelper.isDark ? DarkColors.scaffoldBgColor : LightColors.scaffoldBgColor,
        body: Column(children: [
          Expanded(
              flex: 4,
              child: CalculateOutputPart(
                calculateController: controller,
              )),
          Expanded(
              flex: 6,
              child: DefaultNumericLayout(
                controller: controller,
              ))
        ]),
      );
    });
  }
}
