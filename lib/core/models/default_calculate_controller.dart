import 'package:get/get.dart';
import 'package:math_expressions/math_expressions.dart';

class CalculateController extends GetxController {
  var userInput = '';
  var userOutput = '';

  void equalPropertyPressed() {
    String userInputFunc = userInput;
    userInputFunc = userInputFunc.replaceAll('x', '*');
    Parser p = Parser();
    Expression expression = p.parse(userInputFunc);
    ContextModel context = ContextModel();
    var eval = expression.evaluate(EvaluationType.REAL, context);

    userOutput = eval.toString();
    update();
  }

  clearPropertyPressed() {
    if (userInput.isNotEmpty || userOutput.isNotEmpty) {
      userInput = '';
      userOutput = '';
    }
    update();
  }

  deleteButtonPressed() {
    if (userInput.isNotEmpty) {
      userInput = userInput.substring(0, userInput.length - 1);
    }
    update();
  }

  numberButtonPressed(List<String> numButtons, int index) {
    userInput += numButtons.elementAt(index);
    update();
  }

  bool isOperator(String y) {
    if (y == '%' || y == '/' || y == 'x' || y == '-' || y == '+' || y == '=') {
      return true;
    }
    return false;
  }

  bool lastInputIsOperator() {
    if (userInput.isEmpty) {
      return true;
    }
    if (isOperator(userInput[userInput.length - 1])) {
      return true;
    } else {
      return false;
    }
  }
}
