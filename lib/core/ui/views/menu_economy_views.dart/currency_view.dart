import 'package:flutter/material.dart';

import '../../../constants/app_strings.dart';
import '../../widgets/custom_appbar.dart';

class CurrencyCalculatorPage extends StatefulWidget {
  const CurrencyCalculatorPage({super.key});

  @override
  State<CurrencyCalculatorPage> createState() => _CurrencyCalculatorPageState();
}

class _CurrencyCalculatorPageState extends State<CurrencyCalculatorPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(title: PageTexts.Currency),
    );
  }
}
