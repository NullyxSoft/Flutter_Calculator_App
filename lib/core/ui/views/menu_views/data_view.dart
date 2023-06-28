import 'package:flutter/material.dart';

import '../../../constants/app_strings.dart';
import '../../widgets/custom_appbar.dart';

class DataCalculatePage extends StatefulWidget {
  const DataCalculatePage({super.key});

  @override
  State<DataCalculatePage> createState() => _DataCalculatePageState();
}

class _DataCalculatePageState extends State<DataCalculatePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(title: PageTexts.Data),
    );
  }
}
