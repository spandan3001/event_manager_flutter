import 'package:flutter/material.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

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
    _tabController.addListener(() {
      setState(() {
        _currentIndex = _tabController.index;
      });
    });
  }

  int _currentIndex = 0;

  final List<Widget> _screens = [
    // Replace these with your actual screens
    const Screen1(),
    const Screen2(),
    const Screen3(),
  ];

  late TabController _tabController;
  void _onTabTapped(int index) {
    setState(() {
      _tabController.index = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home'),
      ),
      body: TabBarView(
        controller: _tabController,
        children: _screens,
      ),
      bottomNavigationBar: const Padding(
        padding: EdgeInsets.all(8.0),
        child: GNav(
          backgroundColor: Colors.blue,
          color: Colors.white,
          activeColor: Colors.black,
          tabBackgroundColor: Colors.grey,
          gap: 8,
          padding: EdgeInsets.all(15),
          tabs: [
            GButton(
              icon: Icons.home,
              text: "Home",
            ),
            GButton(
              icon: Icons.search,
              text: "search",
            ),
            GButton(
              icon: Icons.people,
              text: "profile",
            ),
          ],
        ),
      ),
      // bottomNavigationBar: CurvedNavigationBar(
      //   index: _tabController.index,
      //   color: Colors.blue,
      //   backgroundColor: Colors.white,
      //   animationDuration: const Duration(milliseconds: 200),
      //   onTap: _onTabTapped,
      //   items: const [
      //     Icon(Icons.home),
      //     Icon(Icons.search),
      //     Icon(Icons.person),
      //   ],
      // ));
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
