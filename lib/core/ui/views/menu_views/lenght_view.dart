import 'package:flutter/material.dart';

import '../../../constants/app_strings.dart';
import '../../widgets/custom_appbar.dart';

class LenghtCalculatePage extends StatefulWidget {
  const LenghtCalculatePage({super.key});

  @override
  State<LenghtCalculatePage> createState() => LenghtCalculatePageState();
}

class LenghtCalculatePageState extends State<LenghtCalculatePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(title: PageTexts.Lenght),
    );
  }
}
