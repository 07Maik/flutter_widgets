import 'package:flutter/material.dart';

class InteractiveViewerWidget extends StatelessWidget {
  const InteractiveViewerWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          width: 200,
          height: 200,
          decoration: BoxDecoration(border: Border.all(color: Colors.black)),
          child: InteractiveViewer(
            maxScale: 50,
            minScale: 0.1,
            boundaryMargin: const EdgeInsets.all(100),
            child: const FlutterLogo(size: 200),
          ),
        ),
      ),
    );
  }
}
