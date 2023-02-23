import 'package:flutter/material.dart';

class MouseRegionWidget extends StatelessWidget {
  const MouseRegionWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: MouseRegion(
          onEnter: (event) {
            debugPrint("enter");
          },
          onExit: (event) {
            debugPrint("exit");
          },
          onHover: (event) {
            debugPrint("hover");
          },
          cursor: MouseCursor.uncontrolled,
          child: Container(
            width: 200,
            height: 400,
            color: Colors.blue.shade100,
          ),
        ),
      ),
    );
  }
}
