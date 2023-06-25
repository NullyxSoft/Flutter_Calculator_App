import 'package:calculator_app/core/constants/app_colors.dart';
import 'package:calculator_app/core/constants/app_strings.dart';
import 'package:calculator_app/core/models/calculate_controller.dart';
import 'package:calculator_app/core/ui/shared/ui_helpers.dart';
import 'package:calculator_app/core/ui/widgets/custom_button.dart';
import 'package:flutter/material.dart';

// Default Calculate Page Key Layout Widget
class DefaultNumericLayout extends StatefulWidget {
  const DefaultNumericLayout({super.key});

  @override
  State<DefaultNumericLayout> createState() => _DefaultNumericLayoutState();
}

class _DefaultNumericLayoutState extends State<DefaultNumericLayout> {
  @override
  Widget build(BuildContext context) {
    CalculateController calculateController = CalculateController();
    return Expanded(
      flex: 2,
      child: Container(
        child: GridView.builder(
          physics: const NeverScrollableScrollPhysics(),
          itemCount: PageTexts.numButtons.length,
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 4),
          itemBuilder: (context, index) {
            switch (index) {
              case 0:
                return CustomButton(
                    color: !UIHelper.isDark ? DarkColors.numBtnColor : LightColors.numBtnColor,
                    textColor: SameColors.operatorBtnColor,
                    text: PageTexts.numButtons.elementAt(index),
                    buttonTapped: () => calculateController.clearPropertyPressed);
              case 1:
                return CustomButton(
                    color: !UIHelper.isDark ? DarkColors.numBtnColor : LightColors.numBtnColor,
                    textColor: SameColors.operatorBtnColor,
                    text: PageTexts.numButtons.elementAt(index),
                    buttonTapped: () => calculateController.deleteButtonPressed);
              case 19:
                return CustomButton(
                    color: !UIHelper.isDark ? DarkColors.numBtnColor : LightColors.numBtnColor,
                    textColor: SameColors.operatorBtnColor,
                    text: PageTexts.numButtons.elementAt(index),
                    buttonTapped: () => calculateController.equalPropertyPressed);
              default:
                return CustomButton(
                    color: !UIHelper.isDark ? DarkColors.numBtnColor : LightColors.numBtnColor,
                    textColor: calculateController.isOperator(PageTexts.numButtons.elementAt(index))
                        ? SameColors.operatorBtnColor
                        : UIHelper.isDark
                            ? DarkColors.numBtnColor
                            : LightColors.numBtnColor,
                    text: PageTexts.numButtons.elementAt(index),
                    buttonTapped: () => calculateController.numberButtonPressed(PageTexts.numButtons, index));
            }
          },
        ),
      ),
    );
  }
}
