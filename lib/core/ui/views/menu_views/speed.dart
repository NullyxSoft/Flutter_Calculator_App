import 'package:flutter/material.dart';

import '../../../constants/app_strings.dart';
import '../../widgets/custom_appbar.dart';

class SpeedCalculatePage extends StatefulWidget {
  const SpeedCalculatePage({super.key});

  @override
  State<SpeedCalculatePage> createState() => _SpeedCalculatePageState();
}

class _SpeedCalculatePageState extends State<SpeedCalculatePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(title: PageTexts.Speed),
    );
  }
}
