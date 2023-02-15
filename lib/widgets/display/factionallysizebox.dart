import 'package:flutter/material.dart';

class FractionallySizeBoxWidget extends StatelessWidget {
  const FractionallySizeBoxWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: FractionallySizedBox(
          widthFactor: 0.5,
          heightFactor: 0.10,
          child: Container(
            color: Colors.blue,
          ),
        ),
      ),
    );
  }
}
