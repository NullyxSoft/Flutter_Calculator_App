import 'package:flutter/material.dart';

import '../../../constants/app_strings.dart';
import '../../widgets/custom_appbar.dart';

class NumeralSystemCalculatePage extends StatefulWidget {
  const NumeralSystemCalculatePage({super.key});

  @override
  State<NumeralSystemCalculatePage> createState() => _NumeralSystemCalculatePageState();
}

class _NumeralSystemCalculatePageState extends State<NumeralSystemCalculatePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(title: PageTexts.NumeralSystem),
    );
  }
}
