// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:calculator_app/core/constants/app_colors.dart';
import 'package:calculator_app/core/constants/app_strings.dart';
import 'package:calculator_app/core/models/default_calculate_controller.dart';
import 'package:calculator_app/core/ui/shared/ui_helpers.dart';
import 'package:calculator_app/core/ui/widgets/custom_button.dart';

// Default Calculate Page Key Layout Widget
class DefaultNumericLayout extends StatefulWidget {
  final CalculateController controller;
  const DefaultNumericLayout({
    Key? key,
    required this.controller,
  }) : super(key: key);

  @override
  State<DefaultNumericLayout> createState() => _DefaultNumericLayoutState();
}

class _DefaultNumericLayoutState extends State<DefaultNumericLayout> {
  @override
  Widget build(BuildContext context) {
    return GetBuilder<CalculateController>(
      builder: (controller) {
        return GridView.builder(
          padding: EdgeInsets.zero,
          shrinkWrap: true,
          physics: const NeverScrollableScrollPhysics(),
          itemCount: PageTexts.defaultCalculateNumButtons.length,
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 4, crossAxisSpacing: 0, mainAxisSpacing: 0, mainAxisExtent: 80),
          itemBuilder: (context, index) {
            switch (index) {
              case 0:
                return ClearButton(index, controller);
              case 1:
                return DeleteButton(index, controller);
              case 19:
                return EqualButton(index, controller);
              default:
                return NumButton(controller, index);
            }
          },
        );
      },
    );
  }

  CustomButton NumButton(CalculateController controller, int index) {
    return CustomButton(
        color: !UIHelper.isDark ? DarkColors.numBtnColor : LightColors.numBtnColor,
        textColor: controller.isOperator(PageTexts.defaultCalculateNumButtons.elementAt(index))
            ? SameColors.operatorBtnColor
            : UIHelper.isDark
                ? DarkColors.numBtnColor
                : LightColors.numBtnColor,
        text: PageTexts.defaultCalculateNumButtons.elementAt(index),
        buttonTapped: controller.isOperator(PageTexts.defaultCalculateNumButtons.elementAt(index))
            ? controller.lastInputIsOperator() == false
                ? (() {
                    controller.numberButtonPressed(PageTexts.defaultCalculateNumButtons, index);
                    print(controller.lastInputIsOperator());
                  })
                : () {
                    print(controller.lastInputIsOperator());
                  }
            : () {
                controller.numberButtonPressed(PageTexts.defaultCalculateNumButtons, index);
                print(controller.lastInputIsOperator());
              });
  }

  CustomButton EqualButton(int index, CalculateController controller) {
    return CustomButton(
        color: !UIHelper.isDark ? DarkColors.numBtnColor : LightColors.numBtnColor,
        textColor: SameColors.operatorBtnColor,
        text: PageTexts.defaultCalculateNumButtons.elementAt(index),
        buttonTapped: !controller.lastInputIsOperator()
            ? () {
                controller.equalPropertyPressed();
              }
            : () {});
  }

  CustomButton DeleteButton(int index, CalculateController controller) {
    return CustomButton(
        color: !UIHelper.isDark ? DarkColors.numBtnColor : LightColors.numBtnColor,
        textColor: SameColors.operatorBtnColor,
        text: PageTexts.defaultCalculateNumButtons.elementAt(index),
        buttonTapped: () {
          controller.deleteButtonPressed();
        });
  }

  CustomButton ClearButton(int index, CalculateController controller) {
    return CustomButton(
        color: !UIHelper.isDark ? DarkColors.numBtnColor : LightColors.numBtnColor,
        textColor: SameColors.operatorBtnColor,
        text: PageTexts.defaultCalculateNumButtons.elementAt(index),
        buttonTapped: () {
          controller.clearPropertyPressed();
        });
  }
}
