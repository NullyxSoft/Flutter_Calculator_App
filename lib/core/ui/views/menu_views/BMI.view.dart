import 'package:flutter/material.dart';
import '../../../constants/app_strings.dart';
import '../../widgets/custom_appbar.dart';

class BMICAlculatePage extends StatefulWidget {
  const BMICAlculatePage({super.key});

  @override
  State<BMICAlculatePage> createState() => _BMICAlculatePageState();
}

class _BMICAlculatePageState extends State<BMICAlculatePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(title: PageTexts.BMI),
    );
  }
}
