import 'package:event_manager/custom_nav_bar/nav_bar_1/custom_nav_bar.dart';
import 'package:event_manager/screen/profile_screen.dart';
import 'package:event_manager/theme/colors.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen>
    with SingleTickerProviderStateMixin {
  @override
  void initState() {
    super.initState();

    _tabController = TabController(length: _screens.length, vsync: this);
  }

  final List<Widget> _screens = [
    // Replace these with your actual screens
    const Screen1(),
    const Screen2(),
    const ProfileScreen(),
  ];

  late TabController _tabController;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: primary,
      body: TabBarView(
        controller: _tabController,
        children: _screens,
      ),
      bottomNavigationBar: CustomTabBar(
        tabController: _tabController,
        tabs: const [
          Tab(
            icon: Icon(Icons.home),
          ),
          Tab(
            icon: Icon(Icons.search),
          ),
          Tab(
            icon: Icon(Icons.people),
          ),
        ],
        onTap: (value) {},
      ),
    );
  }
}

class Screen1 extends StatelessWidget {
  const Screen1({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text('Screen 1'),
    );
  }
}

class Screen2 extends StatelessWidget {
  const Screen2({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text('Screen 2'),
    );
  }
}

class Screen3 extends StatelessWidget {
  const Screen3({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text('Screen 3'),
    );
  }
}
