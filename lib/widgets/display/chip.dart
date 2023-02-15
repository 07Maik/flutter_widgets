import 'package:flutter/material.dart';

class ChipWidget extends StatelessWidget {
  const ChipWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Chip(
          label: const Text('Close'),
          avatar: const Icon(Icons.person),
          backgroundColor: Colors.amber,
          deleteIconColor: Colors.white,
          onDeleted: () {},
        ),
      ),
    );
  }
}
