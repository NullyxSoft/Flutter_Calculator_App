import 'package:flutter/material.dart';

import '../../../constants/app_strings.dart';
import '../../widgets/custom_appbar.dart';

class MassCalculatePage extends StatefulWidget {
  const MassCalculatePage({super.key});

  @override
  State<MassCalculatePage> createState() => _MassCalculatePageState();
}

class _MassCalculatePageState extends State<MassCalculatePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(title: PageTexts.Mass),
    );
  }
}
