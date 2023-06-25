import 'package:math_expressions/math_expressions.dart';

class CalculateController {
  var userInput = '';
  var userOutput = '';

  void equalPropertyPressed() {
    String userInputFunc = userInput;
    userInputFunc = userInputFunc.replaceAll('x', '*');
    Parser p = Parser();
    Expression expression = p.parse(userInputFunc);
    ContextModel context = ContextModel();
    double eval = expression.evaluate(EvaluationType.REAL, context);

    userOutput = eval.toString();
  }

  clearPropertyPressed() {
    userInput = '';
    userOutput = '';
  }

  deleteButtonPressed() {
    userInput = userInput.substring(0, userInput.length - 1);
  }

  numberButtonPressed(List<String> numButtons, int index) {
    userInput += numButtons.elementAt(index);
  }

  bool isOperator(String y) {
    if (y == '%' || y == '/' || y == 'x' || y == '-' || y == '+' || y == '=') {
      return true;
    }
    return false;
  }
}
