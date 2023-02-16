import 'package:flutter/material.dart';

class LimitedBoxWidget extends StatelessWidget {
  const LimitedBoxWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ListView(
          // scrollDirection: Axis.horizontal,
          children: [
            LimitedBox(
              maxWidth: 100,
              maxHeight: 200,
              child: Container(
                width: 200,
                height: 200,
                color: Colors.red,
              ),
            ),
            LimitedBox(
              maxWidth: 100,
              maxHeight: 200,
              child: Container(
                width: 200,
                height: 200,
                color: Colors.blue,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
