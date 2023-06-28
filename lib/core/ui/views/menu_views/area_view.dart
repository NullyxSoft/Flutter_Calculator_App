import 'package:calculator_app/core/constants/app_strings.dart';
import 'package:calculator_app/core/models/default_calculate_controller.dart';
import 'package:calculator_app/core/ui/views/calculate_output.dart';
import 'package:calculator_app/core/ui/views/keyboard_layouts/numeric_type2.dart';
import 'package:calculator_app/core/ui/widgets/custom_appbar.dart';
import 'package:flutter/material.dart';

class AreaCalculatePage extends StatefulWidget {
  const AreaCalculatePage({super.key});

  @override
  State<AreaCalculatePage> createState() => _AreaCalculatePageState();
}

class _AreaCalculatePageState extends State<AreaCalculatePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(title: PageTexts.Area),
      body: Column(children: [
        Expanded(flex: 4, child: CalculateOutputPart(calculateController: CalculateController())),
        const Expanded(
          flex: 6,
          child: CalculateNumericType2(),
        )
      ]),
    );
  }
}
