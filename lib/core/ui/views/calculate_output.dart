import 'package:calculator_app/core/models/default_calculate_controller.dart';
import 'package:calculator_app/core/ui/shared/ui_helpers.dart';
import 'package:flutter/material.dart';

class CalculateOutputPart extends StatefulWidget {
  final CalculateController calculateController;

  const CalculateOutputPart({super.key, required this.calculateController});

  @override
  State<CalculateOutputPart> createState() => _CalculateOutputPartState();
}

class _CalculateOutputPartState extends State<CalculateOutputPart> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 10),
      child: Column(
        children: [
          Expanded(
            child: Container(
              alignment: Alignment.bottomRight,
              child: Text(widget.calculateController.userOutput,
                  style: TextStyle(color: UIHelper.isDark ? Colors.white : Colors.black, fontSize: 42)),
            ),
          ),
          Expanded(
            child: Container(
              decoration: const BoxDecoration(border: Border(bottom: BorderSide(color: Colors.white54))),
              alignment: Alignment.bottomRight,
              child: Text(
                widget.calculateController.userInput,
                style: TextStyle(
                  color: UIHelper.isDark ? Colors.white : Colors.black,
                  fontSize: 40,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
