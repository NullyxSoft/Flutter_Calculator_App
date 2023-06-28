import 'package:flutter/material.dart';

import '../../../constants/app_strings.dart';
import '../../widgets/custom_appbar.dart';

class TemperatureCalculatePage extends StatefulWidget {
  const TemperatureCalculatePage({super.key});

  @override
  State<TemperatureCalculatePage> createState() => _TemperatureCalculatePageState();
}

class _TemperatureCalculatePageState extends State<TemperatureCalculatePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(title: PageTexts.Temperature),
    );
  }
}
