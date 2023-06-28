import 'package:calculator_app/core/constants/app_strings.dart';
import 'package:calculator_app/core/ui/widgets/custom_appbar.dart';
import 'package:flutter/material.dart';

class AgeCalculatePage extends StatefulWidget {
  const AgeCalculatePage({super.key});

  @override
  State<AgeCalculatePage> createState() => _AgeCalculatePageState();
}

class _AgeCalculatePageState extends State<AgeCalculatePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(title: PageTexts.Age),
      body: const Column(children: []),
    );
  }
}
