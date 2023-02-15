import 'package:flutter/material.dart';

class BottonNavigationBarWidget extends StatefulWidget {
  const BottonNavigationBarWidget({super.key});

  @override
  State<BottonNavigationBarWidget> createState() =>
      _BottonNavigationBarWidgetState();
}

class _BottonNavigationBarWidgetState extends State<BottonNavigationBarWidget> {
  late int indexSelected;

  @override
  void initState() {
    indexSelected = 0;
    super.initState();
  }

  String getText() => indexSelected == 0 ? "Home" : "Person";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text(getText()),
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: indexSelected,
        type: BottomNavigationBarType.shifting,
        items: const [
          BottomNavigationBarItem(
              backgroundColor: Colors.blue,
              icon: Icon(Icons.house_outlined),
              activeIcon: Icon(Icons.house),
              label: 'Home'),
          BottomNavigationBarItem(
              backgroundColor: Colors.red,
              icon: Icon(Icons.person_outline),
              activeIcon: Icon(Icons.person),
              label: 'Home')
        ],
        onTap: (value) => setState(() => indexSelected = value),
      ),
    );
  }
}
