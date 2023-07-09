import 'package:event_manager/theme/colors.dart';
import 'package:flutter/material.dart';

class CustomTabBar extends StatelessWidget {
  const CustomTabBar(
      {Key? key,
      required this.tabController,
      required this.tabs,
      required this.onTap})
      : super(key: key);

  final TabController tabController;
  final List<Tab> tabs;
  final Function(int) onTap;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: (MediaQuery.of(context).size.height / 100) * 5,
      margin: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
      decoration: const BoxDecoration(
        color: primary,
        borderRadius: BorderRadius.all(Radius.circular(5)),
      ),
      child: Center(
        child: Padding(
          padding: const EdgeInsets.all(5.0),
          child: TabBar(
            onTap: onTap,
            unselectedLabelColor: Colors.black,
            labelColor: Colors.white,
            indicatorWeight: 2,
            indicator: const BoxDecoration(
              color: buttonColor,
              borderRadius: BorderRadius.all(Radius.circular(5)),
            ),
            controller: tabController,
            tabs: tabs,
          ),
        ),
      ),
    );
  }
}
