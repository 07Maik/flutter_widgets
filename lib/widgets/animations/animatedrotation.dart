import 'dart:math';

import 'package:flutter/material.dart';

class AnimatedRotationWidget extends StatefulWidget {
  const AnimatedRotationWidget({super.key});

  @override
  State<AnimatedRotationWidget> createState() => _AnimatedRotationWidgetState();
}

class _AnimatedRotationWidgetState extends State<AnimatedRotationWidget> {
  late double angle;

  @override
  void initState() {
    angle = 0;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: GestureDetector(
          onTap: () {
            setState(() {
              angle = Random().nextInt(4).toDouble();
            });
          },
          child: AnimatedRotation(
            curve: Curves.easeIn,
            turns: angle,
            duration: const Duration(milliseconds: 1000),
            child: Container(
              width: 300,
              height: 300,
              color: Colors.amber,
              child: const Icon(Icons.warning_amber),
            ),
          ),
        ),
      ),
    );
  }
}
