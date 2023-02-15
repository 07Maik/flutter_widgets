import 'package:flutter/material.dart';

class OverFlowBoxWidget extends StatelessWidget {
  const OverFlowBoxWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          width: 100,
          height: 100,
          color: Colors.red,
          child: OverflowBox(
            maxHeight: 200,
            maxWidth: 200,
            child: Container(
              color: Colors.blue.withOpacity(0.5),
            ),
          ),
        ),
      ),
    );
  }
}
