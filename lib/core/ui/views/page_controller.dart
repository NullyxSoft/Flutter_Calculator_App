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

class _PageControllerViewState extends State<PageControllerView> with TickerProviderStateMixin {
  late TabController tabController;

  @override
  void initState() {
    super.initState();
    tabController = TabController(length: 3, vsync: this, animationDuration: const Duration(seconds: 1));
    tabController.addListener(handleTabSelection);
  }

  @override
  void dispose() {
    tabController.dispose();
    super.dispose();
  }

  void handleTabSelection() {
    setState(() {});
  }

  List<Widget> pages = [
    const DefaultCalculatePage(),
    const CalculatePageMenu(),
    const CalculatePageMenuEconomy(),
  ];
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      initialIndex: tabController.index,
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.transparent,
          centerTitle: true,
          titleSpacing: 50,
          title: Column(
            children: [
              Align(alignment: Alignment.center, child: _pageTabBar()),
              //_pageNavigationBar()
              const SizedBox(
                height: UIHelper.MediumGap,
              )
            ],
          ),
        ),
        body: TabBarView(controller: tabController, children: pages),
      ),
    );
  }

  TabBar _pageTabBar() {
    return TabBar(
      controller: tabController,
      indicator: const BoxDecoration(color: Colors.transparent),
      physics: const AlwaysScrollableScrollPhysics(),
      onTap: (value) {
        setState(() {
          tabController.index = value;
        });
      },
      tabs: [
        Tab(
          icon: PageIcons.DefaultCalculate(tabController.index),
        ),
        Tab(icon: PageIcons.Menu(tabController.index)),
        Tab(icon: PageIcons.MenuEconomy(tabController.index))
      ],
    );
  }
}
