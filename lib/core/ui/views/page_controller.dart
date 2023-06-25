import 'package:calculator_app/core/ui/shared/ui_helpers.dart';
import 'package:calculator_app/core/ui/views/calculate_page_menu_economy.dart';
import 'package:calculator_app/core/ui/views/default_calculate_page.dart';
import 'package:flutter/material.dart';

import '../../constants/app_icons.dart';
import 'calculate_page_menu.dart';

class PageControllerView extends StatefulWidget {
  const PageControllerView({
    super.key,
  });

  @override
  State<PageControllerView> createState() => _PageControllerViewState();
}

class _PageControllerViewState extends State<PageControllerView> {
  int currentIndex = 0;
  List<Widget> pages = [
    const DefaultCalculatePage(),
    const CalculatePageMenu(),
    const CalculatePageMenuEconomy(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        centerTitle: true,
        titleSpacing: 50,
        title: Column(
          children: [
            Align(alignment: Alignment.center, child: _pageNavigationBar()),
            const SizedBox(
              height: UIHelper.MediumGap,
            )
          ],
        ),
      ),
      body: pages[currentIndex],
    );
  }

  NavigationBar _pageNavigationBar() {
    return NavigationBar(
      animationDuration: const Duration(seconds: 5),
      selectedIndex: currentIndex,
      onDestinationSelected: (index) {
        setState(() {
          currentIndex = index;
        });
      },
      destinations: [
        NavigationDestination(
          icon: PageIcons.DefaultCalculate(currentIndex),
          label: '',
        ),
        NavigationDestination(
          icon: PageIcons.Menu(currentIndex),
          label: '',
        ),
        NavigationDestination(
          icon: PageIcons.MenuEconomy(currentIndex),
          label: '',
        )
      ],
    );
  }
}
