import 'package:flutter/material.dart';

import '../../constants/app_constant.dart';
import '../widgets/custom_card.dart';

class CalculatePageMenuEconomy extends StatelessWidget {
  const CalculatePageMenuEconomy({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GridView.builder(
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3),
        itemCount: PageIcons.pageIconMenuEconomyList.length,
        itemBuilder: (context, index) {
          return PageRouteCard(index: index, iconList: PageIcons.pageIconMenuEconomyList, textList: PageTexts.pageTextsMenuEconomyList);
        },
      ),
    );
  }
}
