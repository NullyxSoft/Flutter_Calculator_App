import 'package:flutter/material.dart';

import '../../../constants/app_strings.dart';
import '../../widgets/custom_appbar.dart';

class TimeCalculatePage extends StatefulWidget {
  const TimeCalculatePage({super.key});

  @override
  State<TimeCalculatePage> createState() => _TimeCalculatePageState();
}

class _TimeCalculatePageState extends State<TimeCalculatePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(title: PageTexts.Time),
    );
  }
}
