import 'package:flutter/material.dart';

import '../../../constants/app_strings.dart';
import '../../widgets/custom_appbar.dart';

class DiscountCalculatePage extends StatefulWidget {
  const DiscountCalculatePage({super.key});

  @override
  State<DiscountCalculatePage> createState() => _DiscountCalculatePageState();
}

class _DiscountCalculatePageState extends State<DiscountCalculatePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(title: PageTexts.Discount),
    );
  }
}
