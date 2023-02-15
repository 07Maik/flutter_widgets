import 'package:flutter/material.dart';

class ClipRRectWidget extends StatelessWidget {
  const ClipRRectWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ClipRRect(
          borderRadius: BorderRadius.circular(20),
          child: Container(
            width: 300,
            height: 300,
            decoration: BoxDecoration(
              border: Border.all(color: Colors.black, width: 1),
              borderRadius: BorderRadius.circular(20),
            ),
            child: const Placeholder(
              color: Colors.black,
              strokeWidth: 0.5,
            ),
          ),
        ),
      ),
    );
  }
}
