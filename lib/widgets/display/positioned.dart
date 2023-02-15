import 'package:flutter/material.dart';

class PositionedWidget extends StatelessWidget {
  const PositionedWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        height: double.infinity,
        width: double.infinity,
        child: Stack(
          children: [
            container(Colors.red),
            Positioned(
              top: 50,
              left: 50,
              child: container(Colors.blue),
            )
          ],
        ),
      ),
    );
  }

  Container container(Color color) {
    return Container(
      color: color,
      width: 200,
      height: 200,
    );
  }
}
