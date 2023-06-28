import 'package:flutter/material.dart';

import '../../../constants/app_strings.dart';
import '../../widgets/custom_appbar.dart';

class DateCalculatePage extends StatefulWidget {
  const DateCalculatePage({super.key});

  @override
  State<DateCalculatePage> createState() => _DateCalculatePageState();
}

class _DateCalculatePageState extends State<DateCalculatePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(title: PageTexts.Date),
    );
  }
}
