import 'package:flutter/material.dart';

import '../../../constants/app_strings.dart';
import '../../widgets/custom_appbar.dart';

class VolumeCalculatePage extends StatefulWidget {
  const VolumeCalculatePage({super.key});

  @override
  State<VolumeCalculatePage> createState() => _VolumeCalculatePageState();
}

class _VolumeCalculatePageState extends State<VolumeCalculatePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(title: PageTexts.Volume),
    );
  }
}
