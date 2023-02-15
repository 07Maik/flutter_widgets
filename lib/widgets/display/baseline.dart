import 'package:flutter/material.dart';

class BaselineWidget extends StatelessWidget {
  const BaselineWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          width: 200,
          height: 100,
          color: Colors.amber,
          child: const Baseline(
            baseline: 0,
            baselineType: TextBaseline.alphabetic,
            child: Text(
              'Hi there',
              style: TextStyle(fontSize: 25),
            ),
          ),
        ),
      ),
    );
  }
}
