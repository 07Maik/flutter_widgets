import 'package:flutter/material.dart';

class PageviewWidget extends StatelessWidget {
  const PageviewWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        children: [
          Container(
            color: Colors.red,
            child: const Center(child: Text('Home')),
          ),
          Container(
            color: Colors.blue,
            child: const Center(child: Text('Settings')),
          ),
        ],
      ),
    );
  }
}
