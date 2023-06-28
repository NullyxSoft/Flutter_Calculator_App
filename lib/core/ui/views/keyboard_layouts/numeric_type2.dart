import 'package:calculator_app/core/models/default_calculate_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../constants/app_colors.dart';
import '../../../constants/app_strings.dart';
import '../../shared/ui_helpers.dart';
import '../../widgets/custom_button.dart';

class CalculateNumericType2 extends StatefulWidget {
  const CalculateNumericType2({super.key});

  @override
  State<CalculateNumericType2> createState() => _CalculateNumericType2State();
}

class _CalculateNumericType2State extends State<CalculateNumericType2> {
  @override
  Widget build(BuildContext context) {
    return GetBuilder<CalculateController>(
      builder: (controller) {
        return Row(
          children: [
            Expanded(
              flex: 8,
              child: GridView.builder(
                  padding: EdgeInsets.zero,
                  physics: const NeverScrollableScrollPhysics(),
                  itemCount: PageTexts.CalculateNumButtonsType2.length,
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 3, crossAxisSpacing: 0, mainAxisSpacing: 0, mainAxisExtent: 80),
                  itemBuilder: (context, index) {
                    switch (index) {
                      case 9:
                        return const SizedBox.shrink();
                      default:
                        return NumButtons(controller, index);
                    }
                  }),
            ),
            Expanded(
              flex: 2,
              child: Column(
                children: [
                  Expanded(child: operatorButtons(onTapped: () {}, text: 'C')),
                  Expanded(child: operatorButtons(onTapped: () {}, text: '')),
                ],
              ),
            )
          ],
        );
      },
    );
  }

  Container operatorButtons({required VoidCallback onTapped, required String text}) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: const BorderRadius.all(Radius.circular(30)),
        color: UIHelper.isDark ? const Color.fromRGBO(250, 160, 0, 0.1) : const Color.fromRGBO(255, 255, 255, 0.9),
      ),
      padding: EdgeInsets.zero,
      child: InkWell(
        onTap: onTapped,
        child: Center(
          child: Text(
            text,
            style: const TextStyle(color: Colors.amber, fontSize: UIHelper.XXLargeFontSize),
          ),
        ),
      ),
    );
  }

  CustomButton NumButtons(CalculateController controller, int index) {
    return CustomButton(
        color: !UIHelper.isDark ? DarkColors.numBtnColor : LightColors.numBtnColor,
        textColor: controller.isOperator(PageTexts.CalculateNumButtonsType2.elementAt(index))
            ? SameColors.operatorBtnColor
            : UIHelper.isDark
                ? DarkColors.numBtnColor
                : LightColors.numBtnColor,
        text: PageTexts.CalculateNumButtonsType2.elementAt(index),
        buttonTapped: controller.isOperator(PageTexts.CalculateNumButtonsType2.elementAt(index))
            ? controller.lastInputIsOperator() == false
                ? (() {
                    controller.numberButtonPressed(PageTexts.CalculateNumButtonsType2, index);
                    print(controller.lastInputIsOperator());
                  })
                : () {
                    print(controller.lastInputIsOperator());
                  }
            : () {
                controller.numberButtonPressed(PageTexts.CalculateNumButtonsType2, index);
                print(controller.lastInputIsOperator());
              });
  }
}
