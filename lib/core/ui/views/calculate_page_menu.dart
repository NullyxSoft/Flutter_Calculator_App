import 'package:calculator_app/core/constants/app_routes.dart';
import 'package:calculator_app/core/ui/widgets/custom_card.dart';
import 'package:flutter/material.dart';

import '../../constants/app_icons.dart';
import '../../constants/app_strings.dart';

class CalculatePageMenu extends StatelessWidget {
  const CalculatePageMenu({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: GridView.builder(
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3),
      itemCount: PageIcons.pageIconMenuList.length,
      itemBuilder: (context, index) {
        return PageRouteCard(
            onTapped: () {
              Navigator.pushNamed(context, PageRoutes.menuRoutesList.elementAt(index));
            },
            index: index,
            iconList: PageIcons.pageIconMenuList,
            textList: PageTexts.pageTextsMenuList);
      },
    ));
  }
}
