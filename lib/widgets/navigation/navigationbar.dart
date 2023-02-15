import 'package:flutter/material.dart';

class NavigationBarWidget extends StatefulWidget {
  const NavigationBarWidget({super.key});

  @override
  State<NavigationBarWidget> createState() => _NavigationBarWidgetState();
}

class _NavigationBarWidgetState extends State<NavigationBarWidget> {
  List<Widget> widgets = const [
    Icon(Icons.home),
    Icon(Icons.list),
    Icon(Icons.settings),
  ];

  late int currentPageIndex;

  @override
  void initState() {
    currentPageIndex = 0;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: widgets[currentPageIndex],
      ),
      bottomNavigationBar: NavigationBar(
        destinations: const [
          NavigationDestination(icon: Icon(Icons.home), label: 'Home'),
          NavigationDestination(icon: Icon(Icons.list), label: 'List'),
          NavigationDestination(icon: Icon(Icons.settings), label: 'Settings'),
        ],
        selectedIndex: currentPageIndex,
        onDestinationSelected: (int index) =>
            setState(() => currentPageIndex = index),
      ),
    );
  }
}
