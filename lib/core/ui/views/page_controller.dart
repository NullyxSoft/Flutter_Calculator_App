import 'package:calculator_app/core/constants/app_constant.dart';
import 'package:calculator_app/core/ui/views/calculate_page_menu_economy.dart';
import 'package:calculator_app/core/ui/views/default_calculate_page.dart';
import 'package:flutter/material.dart';

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
        title: _pageNavigationBar(),
      ),
      body: pages[currentIndex],
    );
  }

  NavigationBar _pageNavigationBar() {
    return NavigationBar(
      animationDuration: const Duration(seconds: 1),
      indicatorColor: Colors.transparent,
      elevation: 0,
      indicatorShape: null,
      backgroundColor: Colors.transparent,
      labelBehavior: NavigationDestinationLabelBehavior.alwaysHide,
      selectedIndex: currentIndex,
      onDestinationSelected: (index) {
        setState(() {
          currentIndex = index;
        });
      },
      destinations: const [
        NavigationDestination(
          icon: PageIcons.DefaultCalculate,
          label: '',
        ),
        NavigationDestination(
          icon: PageIcons.Menu,
          label: '',
        ),
        NavigationDestination(
          icon: PageIcons.MenuEconomy,
          label: '',
        )
      ],
    );
  }
}
